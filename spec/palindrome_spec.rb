def palindrome_r(str)
  return true if [0, 1].include? str.length
  str_to_evaluate = str.gsub(/\W/, '').downcase

  str_to_evaluate[0] == str_to_evaluate[-1] ? palindrome_r(str_to_evaluate[1...-1]) : false
end

def palindrome_i(str)
  return true if [0, 1].include? str.length
  str_to_evaluate = str.gsub(/\W/, '').downcase

  while str_to_evaluate.length > 1
    palindrome = str_to_evaluate[0] == str_to_evaluate[-1] ? true : false
    str_to_evaluate = str_to_evaluate[1...-1]
  end

  palindrome
end

RSpec.describe 'checking if words are palindromes' do
  describe '#palindrome_r' do
    context 'empty or 1-character strings' do
      it 'returns true' do
        expect(palindrome_r('')).to eq true
        expect(palindrome_r('s')).to eq true
      end
    end

    it 'returns false when string is not a palindrome' do
      expect(palindrome_r('se')).to eq false
    end

    it 'returns true when string is a palindrome' do
      expect(palindrome_r('bob')).to eq true
      expect(palindrome_r('Racecar')).to eq true
    end

    context 'string is a palindromic phrase' do
      it 'returns true' do
        expect(palindrome_r('Able was I ere I saw Elba')).to eq true
      end

      it 'returns true when phrase has punctuation' do
        expect(palindrome_r('Rise to vote, sir')).to eq true
      end
    end
  end

  describe '#palindrome_i' do
    context 'empty or 1-character strings' do
      it 'returns true' do
        expect(palindrome_i('s')).to eq true
      end
    end

    it 'returns false when string is not a palindrome' do
      expect(palindrome_i('se')).to eq false
    end

    it 'returns true when string is a palindrome' do
      expect(palindrome_i('bob')).to eq true
      expect(palindrome_i('Racecar')).to eq true
    end

    context 'string is a palindromic phrase' do
      it 'returns true' do
        expect(palindrome_i('Able was I ere I saw Elba')).to eq true
      end

      it 'returns true when phrase has punctuation' do
        expect(palindrome_i('Rise to vote, sir')).to eq true
      end
    end
  end
end