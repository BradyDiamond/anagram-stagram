class Word_check
  def initilaize(word, word2)
    @word = word.gsub!(/[^0-9A-Za-z]/, '')
    @word2 = word2.gsub!(/[^0-9A-Za-z]/, '')

  end

  def vowel_check(word,word2)
    vowel_check = word.downcase.count 'aeiou'
    vowel_check2 = word2.downcase.count 'aeiou'
    if  vowel_check < 1 || vowel_check2 < 1
      return "one or both of these are not vaild words"
    end
  end

  def anagram_check(word,word2)
    word_check = word.downcase.split('').sort().join('').to_s
    word2_check = word2.downcase.split('').sort().join('').to_s
    if word_check == word2_check
      return  "this is an anagram"
    end
      return "this is not an anagram"
  end
  
  def antigram_check(word,word2)
    anti_check = word.downcase.split('').sort().join('').to_s
    anti2_check = word2.downcase.split('').sort().join('').to_s
    big_string = anti_check + anti2_check
    string_count = big_string.chars.uniq.count { |char| big_string.count(char) > 1}
    if string_count < 1
      return "no letters match: this is an antigram"
    end
  end
end
