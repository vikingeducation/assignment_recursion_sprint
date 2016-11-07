def factorial_r(n)
  return 1 if n <= 1
  n * factorial_r(n - 1)
end

def factorial_i(n)
  return 1 if n <= 1
  result = n
  (n - 1).downto(1) do |num|
    result = result * num
  end
  result
end

# p factorial_r(5)
# p factorial_i(6)

def sumdig_r(n)
  return n if n < 10
  (n%10) + sumdig_r(n/10)
end

def sumdig_i(n)
  return_value = 0
  iterator = n.to_s.length

  (iterator).times do
    return_value += n%10
    n /= 10
  end
  return_value
end

# p sumdig_i(103)
# p sumdig_r(103)

# Do some cleanup on string first - take letters and digits only
# get rid of spaces and punctuation
# down or up case?

# Base: return true if string.length == 1 || string.length == 0

# look @ the ends of the string (first and last characters)
#



def palindrome_r(string)
  return true if string.length == 1 || string.length == 0

end

def palindrome_i(string)
end
