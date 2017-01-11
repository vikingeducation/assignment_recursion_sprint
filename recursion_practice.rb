# Recursion Practice

# Factorial

    # Recursive Method

def factorial_r(n)
  return 1 if n == 0 || n == 1
  n * factorial_r(n - 1)
end    

    # Iterative Method

def factorial_i(n)
  return 1 if n == 0
  factorial = 1
  (1..n).each {|num| factorial *= num}
  factorial
end

# Digit Sum

    # Recursive Method

def sumdigit_r(num)
  if num < 10
    num
  else
    sumdigit_r(num/10) + num % 10
  end
end

    # Iterative Method

def sumdigit_i(num)
  sumd = 0
  (1..num.to_s.length).each {|digit| sumd += num.to_s[digit-1].to_i}
  sumd
end

# Palindrome

    # Recursive Method

def palindrome_r(string)
  return true if string.length == 1 || string.length == 0
  if string[0] == string[-1]
    palindrome_r(string[1..-2])
  else
    false
  end
end

    # Iterative Method

def palindrome_i(string)
  (0..string.length/2).each do |i|
    return false if string[i] != string[-(i+1)]
  end
  true
end


