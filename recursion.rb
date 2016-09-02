def factorial_r(n)

  return n if n == 1

  n * factorial_r(n-1)

end

#----------

def factorial_i(n)

  product = 1

  n.downto(1) do |x|
    product *= x
  end

  product
end

#----------

def sumdig_r(n)

  sum_of_digits = 0

  return n if n < 10

  remainder = n % 10
  n -= remainder
  sum_of_digits = remainder

  sum_of_digits += sumdig_r(n / 10)

end


#----------

def sumdig_i(n)

  sum_of_digits = 0

  until n < 10

    remainder = n % 10
    n -= remainder
    n /= 10
    sum_of_digits += remainder

  end

  sum_of_digits += n

end

#----------

def palindrome_r?(word)

  chars = word.chars

  return true if chars.length == 1 || chars.length == 0
  
  if chars[0] != chars[-1]
    return false
  else
    chars.delete_at(0)
    chars.pop

    palindrome_r?(chars.join(""))
  end


end

#----------

def palindrome_i?(word)

  chars = word.chars

  while chars.length > 1

    return false if chars[0] != chars[-1]
    
    chars.delete_at(0)
    chars.pop

  end

  true
end

#----------


p factorial_r(5)
p factorial_i(5)

p sumdig_i(103)
p sumdig_r(103)

p palindrome_r?("rotor")
p palindrome_r?("motor")

p palindrome_i?("rotor")
p palindrome_i?("motor")