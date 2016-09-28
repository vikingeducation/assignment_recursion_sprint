def palindrome_r(str)
  str = str.downcase.scan /\w/ if str.class == String
  if str.size == 0 || str.size == 1
    true
  elsif str.shift == str.pop && palindrome_r(str)
    true
  else
    false
  end
end

def palindrome_i(str)
  i = 0
  str = str.downcase.scan /\w/
  str.all? do | char |
    i -= 1
    char == str[i]
  end
end