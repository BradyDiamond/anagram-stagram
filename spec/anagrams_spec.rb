require('pry')
require('rspec')
require('anagrams')

describe("#sort") do
  it("will sort string to isolate characters") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.sort_word('hello')).to(eq('ehllo'))
    expect(word2.sort_word('there')).to(eq('eehrt'))
  end
  it("will compare two sorted strings and say if they are an antagram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.anagram_check('pool','loop')).to(eq("this is an antagram"))
  end
  it("will compare two sorted strings and say if they are not an antagram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.anagram_check('pool','fool')).to(eq("this is not an antagram"))
  end
end