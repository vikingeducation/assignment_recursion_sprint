# palindrome_r.rb

def palindrome_r(str)
  
  return true if str.empty?
  return true if str.length == 1
  if str[0].downcase == str[-1].downcase
    palindrome_r(str[1...-1])
  else
    false
  end
end
