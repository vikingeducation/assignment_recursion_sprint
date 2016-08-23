def plaindrome_f(str)
  return true if str.length <= 1

  if str[0] == str[-1]
  	plaindrome_f(str[1..-2])
  else
  	false
  end
end

def palindrome_i(str)
  str.length.times do
  	break if str.length == 1
  	return false if str[0] != str[-1]
	  str = str[1..-2]
  end
  return true
end
