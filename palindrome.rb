def palindrome_r?(string)
  
  return true if string.length < 2
  if string[0] == string[-1]
    new_string = string[1...-1]
    palindrome_r(new_string)
  else
    return false
  end
end

p palindrome_r?("Rise to vote, sir")
