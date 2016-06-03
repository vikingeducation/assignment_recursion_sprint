def factorial_r(num)
  if num == 1
    return 1
  end
  return num * factorial_r(num - 1)
end

puts factorial_r(5)
# ************************************
def factorial_i(num)
  if !(num.is_a? Integer) || num <= 0
    raise "Wrong Input"
  end
  sum = 1
  num.times do |n|
    sum *= n + 1   
  end
  sum
end

puts factorial_i(5)
# ************************************
def palindrome_r(str)
  str.downcase!
  if str[0] == str[-1]
    new_str = str[1...-1]
    if new_str == nil || new_str.length == 1
      return true
    end
    palindrome_r(new_str)
  else
    return false
  end
end

puts palindrome_r("abaaBa")
# *************************************

