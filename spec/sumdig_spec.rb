require "sumdig"

describe SumDig do
  describe "#output" do
    it "should return the sum of the digits with a recursive method" do
      expect(subject.sumdig_r(103)).to eq(4)
      expect(subject.sumdig_r(1034923)).to eq(22)
    end

    it "should return the sum of the digits with an iterative method" do
      expect(subject.sumdig_i(103)).to eq(4)
      expect(subject.sumdig_i(1034923)).to eq(22)
    end
  end

  describe "edge cases" do
    it "should reject non numeric inputs" do
      expect{subject.sumdig_r("FORSTer103983$")}.to raise_error('Please enter a numeric value')
      expect{subject.sumdig_i("FORSTer103983$")}.to raise_error('Please enter a numeric value')
    end
  end
end
