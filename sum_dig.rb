def sumdig_r n
  # base case
  return n if n < 10
  # pattern
  divider = 10 ** (n.to_s.length - 1)
  quotient, modulus = n.divmod(divider)
  return quotient + sumdig_r(modulus)
end

def sumdig_i n
  sum = 0
  times = n.to_s.length - 1
  times.downto(0) do |i|
    quotient, modulus = n.divmod(10 ** i)
    n -= quotient * 10 ** i
    sum += quotient
  end
  sum
end
