require('rspec')
require('numbers_to_words')
# takes a number returns a word
describe ('Fixnum#numbers_to_words') do
    it("takes a number and returns the written form of that number") do
        expect(2.numbers_to_words()).to(eq("two"))
    end
    it("takes a two digit number and returns the written form of that number") do
        expect(23.numbers_to_words()).to(eq("twenty three"))
    end
    it("takes a three digit number and returns the written form of that number") do
        expect(123.numbers_to_words()).to(eq("one hundred twenty three"))
    end
end
