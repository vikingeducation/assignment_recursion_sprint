require 'factorial'

describe Factorial do

  let(:factorial){Factorial.new}

  it 'is an instance of class' do
    expect(subject).to be_a(Factorial)
  end

  describe '#factorial_r' do

    # it raises an argument error if number < 0
    it 'raises an ArgumentError if argument < 0' do
      expect{factorial.factorial_r(-1)}.to raise_error(ArgumentError)
    end

    # it raises an argument error if number < 0
    it 'raises an ArgumentError if argument is not an integer' do
      expect{factorial.factorial_r(1.25)}.to raise_error(ArgumentError)
    end

    # factorial_r(0) == 1
    # factorial_r(1) == 1
    # factorial_r(2) == 2
    # factorial_r(3) == 6
    # factorial_r(8) == 40320

  end
end