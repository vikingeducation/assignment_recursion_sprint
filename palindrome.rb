def palindrome_r(input)

  input = input.split("")

  if input.length == 1
    return true
  elsif input[0] == input.last
    input.shift
    input.pop
    return palindrome_r(input.join)
  else
    return false
  end

end

def palindrome_i(input)

  palindrome = true
  (input.length / 2).times do |index|
    palindrome = false unless input[index] == input[-1 - index]
  end

  palindrome

end

puts palindrome_r("racecar")
puts palindrome_i("Dustin")