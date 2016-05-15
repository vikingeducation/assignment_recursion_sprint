def palindrome_r(string)
  return true if string.length <= 1
  if string[0] == string[-1]
    palindrome_r(string[1..-2])
  else
    false
  end
end

def palindrome_i(string)
  if string == string.split().reverse.join()
    true
  else
    false
  end
end
