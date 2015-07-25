def factorial_r(num)
  if num == 1 || num == 0
    return 1
  end
  num * factorial_r(num - 1)
end

def factorial_i(num)
  factorial = 1
  1.upto(num) do |i|
    factorial *= i
  end
  factorial
end

def sumdig_r(num)
  return 0 if num == 0
  (num%10) + sumdig_r(num/10)
end

def sumdig_i(num)
  num.to_s.split("").inject(0) {|sum, digit| sum + (digit.to_i) }
end

def palindrome_r(str)
  if str.length == 1 || str.length == 0
    return true
  elsif str[0] == str[-1]
    palindrome_r( str[1..-2] )
  else
    return false
  end
end

def palindrome_i(str)
  
  while str[0] == str[-1]
    str = str[1..-2]
    break if str.empty?
  end

  str.length == 1 || str.length == 0

end