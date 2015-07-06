def palindrome_r (str)

  return true if str.length<2

  str[0]==str[-1] ? palindrome_r(str[1..-2]) : false
  
end

puts palindrome_r ("rwelkcar")