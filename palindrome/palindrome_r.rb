# palindrome_r.rb

def palindrome_r(str)
  
  return true if str.empty?
  return true if str.length == 1
  if str[0] == str[-1]
    palindrome_r(str[1...-1])
  else
    false
  end
end
