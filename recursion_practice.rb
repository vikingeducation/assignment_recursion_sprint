# FACTORIAL
require 'pry'
def factorial_r(n)
  # n! = n * (n - 1)! ...
  result = 1
  if n == 1
    n
  else
    result = n * factorial_r(n - 1)
  end
  result
end

puts factorial_r(4)



def factorial_i(number)
  product = 1
  number.downto(1) { |item| product *= item }
  product
end

puts factorial_i(5)

# DIGIT SUM

def sumdig_r(integer)

  array = integer.to_s.split('')
  sum = sumdig_r_helper(0, array)
  sum
end

def sumdig_r_helper(sum, array)
  if array.length == 0
    return sum
  else
    sum += array.pop.to_i
    sumdig_r_helper(sum, array)
  end
end

puts sumdig_r(498)



def sumdig_i(integer)
  array = integer.to_s.split('')
  sum = 0
  array.each do |int|
    sum += int.to_i
  end
  sum
end

puts sumdig_i(172)

# PALINDROME

def palindrome_r(string)
  is_a_palindrome = true
  if string.length == 1 || string.length == 0
    is_a_palindrome = true
  else
    if string[0] == string[-1]
      palindrome_r(string[1..-2])
    else
      is_a_palindrome = false
    end
  end
  is_a_palindrome
end

puts palindrome_r('hello')
puts palindrome_r('abcddcba')



def palindrome_i(string)
  is_a_palindrome = true
  reversed_string = string.reverse
  (string.length - 1).times do |index|
    if string[index] != reversed_string[index]
      is_a_palindrome = false
    end
  end
  is_a_palindrome
end

puts palindrome_i('hello')
puts palindrome_i('abcddcba')



