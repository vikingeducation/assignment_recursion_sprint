def palindrome_r?(str)

  if str.length == 1 || str.length == 0
    return true
  elsif str.length == 2
    result = str[0] == str[-1] ? true : false
    result
  else
    if str[0] == str[-1]    
      palindrome_r?(str[1..-2])
    else
      return false
    end
  end

end

def palindrome_i(str)

end

p palindrome_r?("amma")
p palindrome_r?("dmma")
p "---"
p palindrome_r?("ambma")
p palindrome_r?("dmbma")