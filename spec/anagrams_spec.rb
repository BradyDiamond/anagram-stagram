require('pry')
require('rspec')
require('anagrams')

describe("#sort") do
  it("will sort string to isolate characters") do
    word = Word.new()
    expect(word.sort_word('hello')).to(eq('ehllo'))
  end
  it("will compare two sorted strings") do
    word = Word.new()
    word2 = Word.new()
    expect(word.anagram_check('hello','hello')).to(eq(true))
end