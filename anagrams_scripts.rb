#!/user/bin/ruby
require('./lib/anagrams.rb')

puts ANGRAM ME!

puts "enter a word"
word = gets.chomp
puts "enter another word"
word2 = gets.chomp
word_check = Word_check.new(word,word2)
puts word_check.vowel_check(word, word2)