def palindrome_r(string)
  string = string.downcase.delete(' ').delete(',')

  return true if string.length < 2

  if string[0] == string[-1]
    new_string = string[1...-1]
    palindrome_r(new_string)
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

p palindrome_i("Rise to vote, sir")
p palindrome_i("")

