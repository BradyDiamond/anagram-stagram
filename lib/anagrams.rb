class Word
  def initilaize(word)
    @word = word
  end

  def sort_word(word)
   return word.split('').sort().join('').to_s
  end  
end