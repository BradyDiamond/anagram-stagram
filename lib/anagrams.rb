class Word_check
  def initilaize(str)
    @word = word.gsub!(/[^0-9A-Za-z]/, '')
    @word2 = word2
    @vowels = {'a' => /[a]/,'e' => /[e]/, 'i' => /[i]/,'o' => /[o]/,'u' => /[u]/}
  end

  def sort_word(word)
    return word.split('').sort().join('').to_s
    return word2.split('').sort().join('').to_s
  end

  def vowel_check(word,word2)
    vowel_check = word.downcase.count 'aeiou'
    vowel_check2 = word2.downcase.count 'aeiou'
    if  vowel_check < 1 || vowel_check2 < 1
      return "one or both of these are not vaild words"
    end
  end

  def anagram_check(word, word2)
    word_check = word.downcase.split('').sort().join('').to_s
    word2_check = word2.downcase.split('').sort().join('').to_s
    if word_check == word2_check
      return  "this is an anagram"
    end
    return "this is not an anagram"
  end    
end
