def palindrome_r(string)
  return true if string.length == 1
  return false if string[0] != string[-1]
  palindrome_r(string[1..-2])
end

def palindrome_i(string)
  while string.length > 1
    return false if string[0] != string[-1]
    string = string[1..-2]
  end
  true
end