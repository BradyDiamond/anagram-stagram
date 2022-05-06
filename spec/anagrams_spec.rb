require('pry')
require('rspec')
require('anagrams')

describe("anagrams") do
  it("will sort string to isolate characters") do
    word = Word.new("hello")
    expect (word.sort('hello')).to(eq(true))
  end
end