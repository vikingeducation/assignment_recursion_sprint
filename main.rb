def factorial_r(num)
  return 1 if num <= 1
  num * factorial_r(num-1)
end

def factorial_i(num)
  fact = 1
  (1..num).each do |n|
    fact = fact * n
  end
  fact
end

p factorial_r(5)
p factorial_i(5)
p factorial_r(0)
p factorial_i(0)
p factorial_r(1)
p factorial_i(1)
puts "==========="

require 'pry'
def sumdig_r(num)
  return num if num/10 == 0
  (num % 10) + sumdig_r(num/10)
end

def sumdig_i(num)
  sum = 0
  while num != 0
    sum += num % 10
    num = num / 10
  end
  sum
end

p sumdig_r 123
p sumdig_i 123
p sumdig_r 999
p sumdig_i 999
puts "==========="

def palindrome_r(str)
  return true if str.size == 1 || str.size == 0
  if str[0] == str[-1]
    palindrome_r(str[1..-2])
  else
    false
  end
end

def palindrome_i(str)
  (0..str.size/2).each do |i|
    return false if str[i] != str[str.size-1-i]
  end
  true
end

p palindrome_r("hello")
p palindrome_i("hello")
p palindrome_r("helleh")
p palindrome_i("helleh")
puts "==========="
