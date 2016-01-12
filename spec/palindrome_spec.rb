require 'palindrome'

=begin
A "Palindrome" is a word or sentence which is the same whether read forwards or backwards, for instance "Rise to vote, sir" or "Able was I ere I saw Elba".

Write a recursive method palindrome_r which returns true if a given string is a palindrome. Hint: strings with zero or 1 letters are always palindromes. Note: Do note use the reverse method... too easy!
Write an iterative method palindrome_i which does the same iteratively.
=end

describe Palindrome do
  let(:palindrome){Palindrome.new}

  it 'is an instance of Palindrome' do
    expect(subject).to be_a(Palindrome)
  end

  describe '#palindrome_r' do
    it 'raises an error if argument is not a string' do
      expect{palindrome.palindrome_r(123)}.to raise_error(ArgumentError)
    end

    it 'does not raise an error if argument is a string' do
      expect{palindrome.palindrome_r("")}.not_to raise_error
    end

    it 'returns true if argument is ""' do
      expect(palindrome.palindrome_r("")).to eq(true)
    end

    it 'returns false if argument is "ab"' do
      expect(palindrome.palindrome_r("ab")).to eq(false)
    end

    it 'returns true if argument is "bob"' do
      expect(palindrome.palindrome_r("bob")).to eq(true)
    end

    it 'returns false if argument is "steven"' do
      expect(palindrome.palindrome_r("steven")).to eq(false)
    end

    it 'returns true if argument is "bb"' do
      expect(palindrome.palindrome_r("bb")).to eq(true)
    end

    it "returns true if argument is 'Able was I ere I saw Elba'" do
      expect(palindrome.palindrome_r("Able was I ere I saw elba")).to eq(true)
    end

    # "Rise to vote, sir" == true
    it "returns true if argument is 'Rise to vote, sir'" do
      expect(palindrome.palindrome_r("Rise to vote, sir")).to eq(true)
    end

  end


  describe '#palindrome_i' do
    it 'raises an error if argument is not a string' do
      expect{palindrome.palindrome_i(123)}.to raise_error(ArgumentError)
    end

    it 'does not raise an error if argument is a string' do
      expect{palindrome.palindrome_i("")}.not_to raise_error
    end


    it 'returns true if string.length is 0 of 1' do
      expect(palindrome.palindrome_i("")).to eq(true)
    end

    it 'returns true if string.length is 0 of 1' do
      expect(palindrome.palindrome_i("a")).to eq(true)
    end

    it 'returns false if argument is "ab"' do
      expect(palindrome.palindrome_i("ab")).to eq(false)
    end

    it 'returns true if argument is "bob"' do
      expect(palindrome.palindrome_i("bob")).to eq(true)
    end

    it 'returns false if argument is "steven"' do
      expect(palindrome.palindrome_i("steven")).to eq(false)
    end

    it 'returns true if argument is "bb"' do
      expect(palindrome.palindrome_i("bb")).to eq(true)
    end

    it "returns true if argument is 'Able was I ere I saw Elba'" do
      expect(palindrome.palindrome_i("Able was I ere I saw elba")).to eq(true)
    end

    # "Rise to vote, sir" == true
    it "returns true if argument is 'Rise to vote, sir'" do
      expect(palindrome.palindrome_i("Rise to vote, sir")).to eq(true)
    end
  end

end