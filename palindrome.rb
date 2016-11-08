
def palindrome_r(string)
  raise ArgumentError unless string.is_a?(String)
  if string.length <= 1
    true
  elsif string[0] == string[-1]
    palindrome_r(string[1..-2])
  else
    false
  end
end

def palindrome_i(string)
  raise ArgumentError unless string.is_a?(String)
  while string.length > 1
    return false unless string[0] == string[-1]
    string = string[1..-2]
  end
  true
end

