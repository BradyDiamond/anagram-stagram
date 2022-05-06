require('rspec')
require('anagrams')

describe("anagrams") do
  it("look for vowels in a given string") do
    word = Word.new()
    expect (word.vowel('hello')).to(eq(true))
  end
end