def factorial_r(num)
  return 1 if [0, 1].include? num
  num * factorial_r(num - 1)
end

def factorial_i(num)
  return 1 if [0, 1].include? num
  (1..num).reduce(:*)
end

RSpec.describe 'recursion practice' do
  describe '#factorial_r' do
    it 'returns the factorial of a number (recursively)' do
      expect(factorial_r(0)).to eq 1
      expect(factorial_r(1)).to eq 1
      expect(factorial_r(2)).to eq 2
      expect(factorial_r(3)).to eq 6
      expect(factorial_r(4)).to eq 24
    end
  end

  describe '#factorial_i' do
    it 'returns the factorial of a number (iteratively)' do
      expect(factorial_i(0)).to eq 1
      expect(factorial_i(1)).to eq 1
      expect(factorial_i(2)).to eq 2
      expect(factorial_i(3)).to eq 6
      expect(factorial_i(4)).to eq 24
    end
  end
end
