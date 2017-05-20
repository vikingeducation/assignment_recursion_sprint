def palindrome_r(word)
  return true if word.length <= 1
  return false if word[0] != word[-1]

  palindrome_r(word[1...-1])
end

def palindrome_i(word)
  current_word = word

  while current_word.length > 1
    return false if current_word[0] != current_word[-1]

    current_word = current_word[1...-1]
  end

  return true
end

# Driver Test
puts palindrome_r('a') == true
puts palindrome_r('ab') == false
puts palindrome_r('abc') == false
puts palindrome_r('aba') == true
puts palindrome_r('cbcc') == false
puts palindrome_r('ccacc') == true
puts palindrome_r('cccc') == true

puts palindrome_i('a') == true
puts palindrome_i('ab') == false
puts palindrome_i('abc') == false
puts palindrome_i('aba') == true
puts palindrome_i('cbcc') == false
puts palindrome_i('ccacc') == true
puts palindrome_i('cccc') == true
