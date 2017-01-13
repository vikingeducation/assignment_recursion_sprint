def palindrome_r(word)
  return true if word.length == 1 || word.length == 0
  return false if word[0] != word[-1]
  palindrome_r(word[1..-2])
end

def palindrome_i(word)
  (word.length / 2).times do |i|
    return false if word[i] != word[-i-1]
  end
  true
end
