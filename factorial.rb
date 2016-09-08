def factorial_r(n)
  return n if n == 1
  n * factorial_r(n - 1)
end

def factorial_i(n)
  product = 1
  n.times do |x|
    product *= x
  end
  product
end