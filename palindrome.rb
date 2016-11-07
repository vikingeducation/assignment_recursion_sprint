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

def palindrome_i?(str)
  str = str.split ''
  new_str = []
  str.each do |letter|
    new_str.unshift(letter)
  end
  str = str.join
  new_str = new_str.join
  str == new_str ? true : false
end
