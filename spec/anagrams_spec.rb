require('pry')
require('rspec')
require('anagrams')

describe("anagrams") do
  it("will compare two sorted strings and say if they are an anagram") do
    word = WordCheck.new()
    expect(word.anagram_check('pool','loop')).to(eq("this is an anagram"))
  end
  it("will compare two sorted strings and say if they are not an anagram") do
    word = WordCheck.new()
    expect(word.anagram_check('pool','fool')).to(eq("this is not an anagram"))
  end
  it("will compare two sorted strings with different case characters and say if they are an anagram") do
    word = WordCheck.new()
    expect(word.anagram_check('pOOl','lOop')).to(eq("this is an anagram"))
  end
  it("will compare two sorted strings with different case characters, remove symbols, and say if they are an antagram") do
    word = WordCheck.new()
    expect(word.anagram_check('pOOl@','lO@op')).to(eq("this is an anagram"))
  end
  it("will dispay error message if no vowels are present") do
    word = WordCheck.new()
    expect(word.vowel_check('lprp','pOOl@')).to(eq("these are not vaild words"))
  end
  it("will compare two sorted strings with different case characters, remove symbols, and say if they are an anigram") do
    word = WordCheck.new()
    expect(word.antigram_check('pile','tags')).to(eq("no letters match: this is an antigram"))
  end
  it("will see if two inputed words are words") do
    word = WordCheck.new()
    expect(word.vowel_check('pile of','these tags')).to(eq("You have entered valid words"))
    expect(word.vowel_check('ppppp of','these tags')).to(eq("these are not vaild words"))
  end
end