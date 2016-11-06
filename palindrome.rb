def palindrome_r(str)
  return true if str.length == 0 || str.length == 1

  str = str.scan(/\w+/).join("").downcase

  if str[0] == str[-1]
    palindrome_r( str[1..-2] )
  else
    return false
  end
end

def palindrome_i(str)
  str = str.scan(/\w+/).join("").downcase

  unless str.length == 0 || str.length == 1
    if str[0] == str[-1]
      str = str[1..-2]
    else
      return false
    end
  end
  true
end
