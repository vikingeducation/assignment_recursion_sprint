def factorial_r(n)
  return 1 if n == 1 || n == 0
  n * factorial(n - 1)
end

def factorial_i(n)
  product = 1
  n.downto(1) do |i|
    product *= i
  end
  product
end

def sum_dig_r(n, total=0)
  return n + total if n < 10
  n = n.to_s
  total += n[0].to_i
  sum_dig_r(n.slice(1..n.length).to_i, total)
end

def sum_dig_i(n)
  sum = 0

  n.to_s.split("").map do |digit|
    sum += digit.to_i
  end

  sum 
end

def palindrome_r(string)
  return true if string.length == 0 || string.length == 1
  first = string[0]
  last = string[-1]
  if first == last 
    palindrome_r(string[1..-2])
  else
    return false
  end
end

def palindrome_i(string)
  rev_string = ''
  (string.length - 1).downto(0) do |index|
    rev_string += string[index]
  end
  rev_string == string
end
