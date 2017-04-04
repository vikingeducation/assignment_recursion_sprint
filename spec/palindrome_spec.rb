require "palindrome"

describe Palindrome do
  describe "#output" do
    it "should return true is string is an even lettered palindrome" do
      expect(subject.palindrome_r("abba")).to eq(true)
      expect(subject.palindrome_i("abba")).to eq(true)
    end

    it "should return true if the string is a odd lettered palindrome" do
      expect(subject.palindrome_r("kayak")).to eq(true)
      expect(subject.palindrome_i("kayak")).to eq(true)
    end

    it "should handle strings with capital letters" do
      expect(subject.palindrome_r("RepAPeR")).to eq(true)
      expect(subject.palindrome_i("RepAPeR")).to eq(true)
    end

    it "should return false for a string that is not a palindrome" do
      expect(subject.palindrome_r("Gorrila")).to eq(false)
      expect(subject.palindrome_i("Gorrila")).to eq(false)
    end
  end

  describe "edge cases" do
    it "should only accept strings" do
      expect{subject.palindrome_r(14235)}.to raise_error("Please enter a string")
      expect{subject.palindrome_i(14235)}.to raise_error("Please enter a string")
    end
  end
end
