def palindrome_i(string)

  while string.length > 1
    if string[0] == string[-1]
      string = string[1..-2]
    else
      return false
    end
  end
  true
end


puts palindrome_i("abcba")