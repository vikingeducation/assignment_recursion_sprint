def palindrome_r input
  # base case
  return true if input.length <= 1
  # pattern
  if input[0] == input[-1]
    palindrome_r input[1..-2]
  else
    return false
  end
end

def palindrome_i input
  l = input.length
  l.times do |i|
    return false if input[i] != input[l - 1 - i]
  end
  true
end
