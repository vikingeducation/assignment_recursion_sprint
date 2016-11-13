def factorial_r(n)
  return 1 if n == 1
  factorial_r(n - 1) * n
end

def factorial_i(n)
  acc = 1
  n.downto(1) do |i|
    acc *= i
  end
  acc
end

def sumdig_i(n)
  string = n.to_s
  array = string.split("")

  output = array.reduce do |sum, n|
    sum.to_i + n.to_i
  end
  output
end

def sumdig_r(n)
  return n if n < 10
  a, b = n.divmod(10)
  sumdig_r(a) + sumdig_r(b)
end
