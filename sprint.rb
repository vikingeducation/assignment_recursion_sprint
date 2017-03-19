def factorial_r(n)
  return 1 if n == 0 || n == 1

  n * factorial_r(n - 1)
end

def factorial_i(n)
  return 1 if n == 0 || n == 1

  result = 1
  1.upto(n) { |i| result *= i }

  result
end

def sumdig_r(n, result = 0)
  if n == 0
    return result
  else
    length = n.to_s.length
    quotient, modulus = n.divmod(10**(length - 1))
    result += quotient

    return sumdig_r(modulus, result) if quotient > 0
  end
end

def sumdig_i(n)
  return n if n.to_s.length == 1

  n.to_s.split(//).map(&:to_i).sum
end
