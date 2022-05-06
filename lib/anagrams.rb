class Word_check
  def initilaize(word, word2)
    @word = word
    @word2 = word2
  end

  def sort_word(word)
   return word.split('').sort().join('').to_s
   return word2.split('').sort().join('').to_s
  end 
  
  def anagram_check(word, word2)
    if word == word2
    return  "this is an antagram"
    end
  end    
end