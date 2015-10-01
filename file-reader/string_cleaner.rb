class StringCleaner

  def is_first_punctuated(str)
    /^[^[a-zA-Z]]/ =~ str ? true:false
  end

  def is_last_punctuated(str)
    /[^[a-zA-Z]]$/ =~ str ? true:false

  end

  #
  # def remove_punctuation(str)
  #   temp = str
  #
  #   while is_first_punctuated(temp)
  #     temp = temp.slice(1..temp.length)
  #   end
  #   while is_last_punctuated(temp)
  #     temp = temp.chop
  #   end
  #   temp
  #
  # end

  def remove_punctuation(str)
    str.gsub(/[^0-9A-Za-z]/, '')
  end

end
