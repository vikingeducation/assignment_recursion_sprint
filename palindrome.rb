def palindrome_r(word)
  return true if word.length == 1 || word.length.zero?
  return false if word[0] != word[-1]
  palindrome_r(word[1..-2])
end

def palindrome_i(word)
  length = (word.length / 2).floor
  length.times do |iter|
    return false if word[iter] != word[-iter - 1]
  end
  true
end

puts palindrome_r('level')
puts palindrome_i('level')
