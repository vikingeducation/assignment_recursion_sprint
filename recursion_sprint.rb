def factorial_r(n)
  raise ArgumentError if n < 0
  return 1 if n == 0
  n * factorial_r(n - 1)
end

def factorial_i(n)
  raise ArgumentError if n < 0
  result = 1
  counter = n
  while n > 1
    result *= n
    n -= 1
  end
  result
end


def sumdig_r(num)
 return num if num <10
 num%10 + sumdig_r(num/10)
end

=begin
Other versions:
def sumdig_r(num)
  return num if num < 10
  chars = num.to_s.chars
  first_digit=chars[0]
  first_digit.to_i + sumdig_r(chars[1..-1].join("").to_i)
end

def sumdig_r(num)
return num if num < 10
chars = num.to_s.chars
total = 0
  while chars.any?
    total += sumdig_r(chars.pop.to_i)
  end
total
=end

def sumdig_i(num)
  num.to_s.split('').map(&:to_i).reduce(:+)
end



def palindrome_r(string)
  return true if string.length == 1 || string.length == 0
  return false if string[0] != string[-1]
  chars = string.chars.select { |char| char != ' ' }
  chars.shift
  chars.pop
  palindrome_r(chars.join(''))
end

