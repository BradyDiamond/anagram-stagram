class WordCheck
  def initilaize(word, word2)
    @word = word
    @word2 = word2
  end

  def vowel_check(word, word2)   
    word = word.split().map{|w|w.count'aeouiAEIOU'}
    word2 = word2.split().map{|w|w.count'aeouiAEIOU'}
    word.each do |char|
    if (char <= 0) 
      return "these are not vaild words"
    else
      return "You have entered valid words"
    end
  end
    word2.each do |char|
    if (char <= 0) 
      return "these are not vaild words"
    else
      return "You have entered valid words"
    end
  end
end

  def anagram_check(word, word2)
    word_check = word.gsub!(/[^0-9A-Za-z]/, '')
    word_check = word.gsub(/\s+/, "").downcase.split('').sort().join('').to_s
    word2_check = word2.gsub!(/[^0-9A-Za-z]/, '')
    word2_check = word2.gsub(/\s+/, "").downcase.split('').sort().join('').to_s
    if word_check == word2_check
      return  "this is an anagram"
    end
      return "this is not an anagram"
  end
  
  def antigram_check(word, word2)
    anti_check = word.gsub!(/[^0-9A-Za-z]/, '')
    anti_check = word.gsub(/\s+/, "").downcase.split('').sort().join('').delete(' ').to_s
    anti_check2 = word2.gsub!(/[^0-9A-Za-z]/, '')
    anti2_check = word2.gsub(/\s+/, "").downcase.split('').sort().join('').delete(' ').to_s
    big_string = anti_check + anti2_check
    string_count = big_string.chars.uniq.count { |char| big_string.count(char) > 1}
    if string_count < 1
      return "no letters match: this is an antigram"
    end
      return "there ARE matching letters: this is not an antigram"
  end
end