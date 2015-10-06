#Why use class instance variables
#lets say there is an Application config class
class AppCon
  #class variable
  @@config ={}

  #class method
  def self.set(name, value)
    @@config[name] =value
  end
  def self.get(name)
    return@@config[name]
  end
end

class GameApp < AppCon

end
class WebApp < AppCon

end

#this is goinf to be wrong
WebApp.set("google", "WebApp")
GameApp.set("Snake", "GamesApp")

puts GameApp.get('Snake') #this is working?
puts WebApp.get('google')

class AppCon1
  #class instance variable, (not defined in a method, but the class)
 @config ={}

  #class method
  def self.set(name, value)
    @config[name] =value
  end
  def self.get(name)
    return @config[name]
  end
end

class GameApp1 < AppCon1
  @config ={}
end
class WebApp1 < AppCon1
  @config ={}
end


GameApp1.set("google", "WebApp")
WebApp1.set("Snake", "GamesApp")

puts GameApp1.get('google') #WEBAPP!!!! WRONG class variable