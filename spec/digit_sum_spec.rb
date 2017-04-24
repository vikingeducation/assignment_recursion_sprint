def sumdig_r(int)
  return int if (int % 10) == int
  (int % 10) + sumdig_r(int / 10)
end

def sumdig_i(int)
  return int if (1..9).cover? int

  sum = 0
  num = int
  while num > 0 do
    sum += num % 10
    num /= 10
  end

  sum
end

RSpec.describe 'sum the digits of an integer' do
  describe '#sumdig_r' do
    it 'returns sum recursively' do
      expect(sumdig_r(1)).to eq 1
      expect(sumdig_r(2)).to eq 2

      expect(sumdig_r(10)).to eq 1
      expect(sumdig_r(123)).to eq 6
    end
  end

  describe '#sumdig_i' do
    it 'returns sum iteratively' do
      expect(sumdig_i(1)).to eq 1
      expect(sumdig_i(2)).to eq 2

      expect(sumdig_i(10)).to eq 1
      expect(sumdig_i(123)).to eq 6
    end
  end
end