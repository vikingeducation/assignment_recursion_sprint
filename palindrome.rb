def palindrome_r(string)
  return true if str.length < 2
  
  str = str.downcase.scan(/[a-z]/) unless Array === str
  first = str.shift
  last = str.pop  
  if first == last
    pali(str)
  else
    return false
  end
end

def palindrome_i(string)
  string = string.downcase.delete(' ').delete(',')

  return true if string.length < 2
  array = string.split("")
  result = true

  array.each.with_index do |letter, index|
    result = false unless (array[-index - 1] == letter)

  end
  result

end