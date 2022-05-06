#!/user/bin/ruby
require('./lib/anagrams.rb')

puts "ANAGRAM'stagram"

puts "enter a word"

word = gets.chomp

puts "enter another word"

word2 = gets.chomp

check = Word_check.new()

p check.vowel_check(word,word2)
puts "+++++++++++++++++++++++++++++"
p check.anagram_check(word,word2)
puts "+++++++++++++++++++++++++++++"
p check.antigram_check(word,word2)