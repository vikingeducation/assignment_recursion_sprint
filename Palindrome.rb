def palindrome_r (str)

  return true if str.length<2

  str[0]==str[-1] ? palindrome_r(str[1..-2]) : false

end

# puts palindrome_r ("rwelkcar")

def palindrome_i(str)
  until (str.length < 2)
    if str[0]==str[-1]
      str = str[1..-2]
    else
      return false
    end
  end

  return true
end

puts palindrome_i("racecar")
puts palindrome_i("notracecar")