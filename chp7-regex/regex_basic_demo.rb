#most common way to write regex is in between slashes/ /
#regex are objects

# /you/ matches anything that contains you so 123you, your but not yo'ur

#=~ returns index where match occured
p /you/ =~ "you" # 0
p /you/ =~ "yo'ur" #nil
p /you/ =~ "me and you" #7

#other ways to create regex
re = Regexp.new('mm/dd')
re1 =%r{mm/dd} #useful if regex has / in it

p /mm\/dd/ =~'mm/dd' #0
p re=~('mm/dd') #0
p re1=~('mm/dd') #0

#since a miss match match returns false, the =~ operator can be used in a if statement
#false
if nil || /you/ =~ "yo'ur"
  puts "yes nil"
end

#true
if 0 && /you/ =~ "me and you"
  puts "yes 0"
end

puts "yes" if "this sentence contains yes" =~ /yes/ #yes

#Changing strings with patterns
str = "Change me me"
new_str =str.sub(/me/, 'ME!')
new_str1 =str.gsub(/me/, 'ME!')
puts new_str #Change ME! me
puts new_str1 #Change ME! ME!

#.match returns the MatchData object which has other information attached to it

#from Programming Ruby 4th edition
def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

show_regexp('very interesting', /t/) # => very in->t<-eresting
show_regexp('Fats Waller', /lle/) # => Fats Wa->lle<-r
show_regexp('Fats Waller', /z/) # => no match

# ^Matches at start of string $Matches at end
p /^is/ =~ "not is here?" #nil doesn't match
p /^is/ =~ " is here?" #nil doesn't match
p /^is/ =~ "is here?" #0 does match
p /is$/ =~ "is here?is" #8
p /is$/ =~ "is here?is " #nil


#character classes in between []
p "hello".gsub(/[aeiou]/,'*')  #h*ll*

#special characters are turned off in []
p "$^%*&".gsub(/[$^%*&]/,'!') # !!!!!

#match a four digit year
p "2010"=~(/[0-9][0-9][0-9][0-9]/) #0
p "201"=~(/[0-9][0-9][0-9][0-9]/) #nil

#Repetition
# * zero or more... + 1 or more.... ?zero or one.... {m,n}min max
#{m,} at least.. {,m}at most {m}exactly
p "2010"=~(/[0-9]{4}/) #0
p "20109"=~(/[0-9]{4}/) #0

def validate_age(age)
  if age.to_s=~/[0-9]{1,2}/
    p "valid"
  else
    p "invalid"
  end
end

validate_age(23)#VALID
validate_age(2323423)#VALID




