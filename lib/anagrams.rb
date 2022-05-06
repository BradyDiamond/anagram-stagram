class Word_check
  def initilaize(str)
    @word = word
    @word2 = word2
  end

  def sort_word(word)
  return word.split('').sort().join('').to_s
  return word2.split('').sort().join('').to_s
  end

  def anagram_check(word, word2)
    word_check = word.split('').sort().join('').to_s
    word2_check = word2.split('').sort().join('').to_s
    if word_check == word2_check
    return  "this is an antagram"
    end
    return "this is not an antagram"
  end    
end