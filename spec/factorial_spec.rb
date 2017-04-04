require "factorial"

describe Factorial do


  describe "output" do
    it "should how the factorial of a number through recursion" do
      expect(subject.factorial_r(54)).to eq(230843697339241380472092742683027581083278564571807941132288000000000000)
    end

    it "should show the factorial of a number through iteration" do
      expect(subject.factorial_i(6)).to eq(720)
    end

    it "should handle zero" do
      expect(subject.factorial_r(0)).to eq(1)
      expect(subject.factorial_i(0)).to eq(1)
    end
  end

  describe "edge cases" do
    it "should reject trying to find the factorial of a negative number" do
      expect{subject.factorial_r(-54)}.to raise_error('Please enter a positive number')
    end

    it "should reject non numberical inputs" do
      expect{subject.factorial_r("Wrong")}.to raise_error('Input must be a positive integer')
      expect{subject.factorial_r("\!\#")}.to raise_error('Input must be a positive integer')
    end
  end
end
