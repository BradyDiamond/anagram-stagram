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
  it("will compare two sorted strings and say if they are an anagram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.anagram_check('pool','loop')).to(eq("this is an anagram"))
  end
  it("will compare two sorted strings and say if they are not an anagram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.anagram_check('pool','fool')).to(eq("this is not an anagram"))
  end
  it("will compare two sorted strings with different case characters and say if they are an anagram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.anagram_check('pOOl','lOop')).to(eq("this is an anagram"))
  end
  it("will compare two sorted strings with different case characters, remove symbols, and say if they are an antagram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.anagram_check('pOOl@','lO@op')).to(eq("this is an anagram"))
  end
  it("will dispay error message if no vowels are present") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.vowel_check('pOOl@','lprp')).to(eq("one or both of these are not vaild words"))
  end
  it("will compare two sorted strings with different case characters, remove symbols, and say if they are an anigram") do
    word = Word_check.new()
    word2 = Word_check.new()
    expect(word.vowel_check('pile','tags')).to(eq("this is an antigram"))
  end
end