require('rspec')
require('anagrams')

describe("anagram") do
  it("look for vowels in a given string") do
   = Word.new()
    expect (anagram('hello')).to(eq(true))
  end
end