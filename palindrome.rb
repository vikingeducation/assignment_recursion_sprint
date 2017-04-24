def palindrome_i(string)
  return true if string.length < 2 
    
  1.upto(string.length/2) do |i|
    if string[i-1] != string[-i] 
      return false
    end
  end
  true
end

def palindrome_r(string)
  return true if string.length < 2

  if string[0] == string[-1]
    palindrome_r(string[1..-2])
  else
    false
  end
end