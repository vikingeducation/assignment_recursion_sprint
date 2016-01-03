require 'sumdig'

=begin
Digit Sum

Write a recursive method sumdig_r which takes an integer and returns the sum of its digits, for instance sumdig_r(103) => 4. Don't forget about mod %!

Write an iterative method sumdig_i which does the same iteratively.
=end

describe Sumdig do
  let(:sumdig){Sumdig.new}

  it 'is an instance of class' do
    expect(subject).to be_a(Sumdig)
  end

  describe '#sumdig_r' do
    # sumdig_r == ArgumentError
    # sumdig_r(13) == 4
    # sumdig_r(5432) == 14
    # sumdig_r(564320) == 20
    # sumdig_r(528) == 15
    # sumdig_r(-543) == 11

    it 'raises an error if no argument is given' do
      expect{sumdig.sumdig_r}.to raise_error(ArgumentError)
    end

    it 'raises an error if  argument is not an integer' do
      expect{sumdig.sumdig_r(1.45)}.to raise_error(ArgumentError)
    end

    it 'does not raise an error if one argument is given' do
      expect {sumdig.sumdig_r(45)}.not_to raise_error
    end

    it 'returns 0 when argument is 0' do
      expect(sumdig.sumdig_r(0)).to eq(0)
    end

    it 'returns 4 when argument is 13' do
      expect(sumdig.sumdig_r(13)).to eq(4)
    end

    it 'returns 14 when argument is 5432' do
      expect(sumdig.sumdig_r(5432)).to eq(14)
    end

    it 'returns 21 when argument is 564320' do
      expect(sumdig.sumdig_r(564320)).to eq(20)
    end

    it 'returns 15 when argument is 528' do
      expect(sumdig.sumdig_r(528)).to eq(15)
    end

    it 'returns 11 when argument is -543' do
      expect(sumdig.sumdig_r(-543)).to eq(12)
    end
  end
end

