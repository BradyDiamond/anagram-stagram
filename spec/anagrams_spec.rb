require('pry')
require('rspec')
require('anagrams')

describe("anagrams") do
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
  it("will compare two sorted strings with different case characters and say if they are an antagram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.anagram_check('pOOl','lOop')).to(eq("this is an antagram"))
  end
  it("will compare two sorted strings with different case characters, remove symbols, and say if they are an antagram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.anagram_check('pOOl@','lO@op')).to(eq("this is an antagram"))
  end
end