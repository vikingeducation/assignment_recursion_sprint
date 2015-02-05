def palindrome_r a_string
  return true if a_string.length <= 1
  if a_string[0] == a_string[-1]
    palindrome_r(a_string[1..-2])
  else
    return false
  end
end

def palindrome_i a_string
  dummy = a_string
  times_do = dummy.length / 2
  return true if dummy.length <= 1
  until times_do < 1
    return false if dummy[0] != dummy[-1]
    dummy = dummy[1..-2]
    times_do = dummy.length / 2
  end
end