def palindrome_r(input)

  input.upcase!

  if input.length == 1 || input.length == 0
    return true
  elsif input[0] == input[-1]
    return palindrome_r(input[1..-2])
  else
    return false
  end

end

def palindrome_i(input)

  input.upcase!

  (input.length / 2).times do |index|
    return false unless input[index] == input[-1 - index]
  end

  true

end

puts palindrome_r("Dustin")
puts palindrome_i("raCecar")