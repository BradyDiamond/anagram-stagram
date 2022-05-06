class Word
  def initilaize()
  end

  def vowel(string)
    vowels = 0
    counter = 0
    while counter < string.length do
      if string[counter]=="a" || string[counter]=="e" || string[counter]=="i" || string[counter]=="o" || string[counter]=="u"
        vowels += 1
      end
      counter += 1
    end
    if counter > 0
    true
    end
    false
  end  
end