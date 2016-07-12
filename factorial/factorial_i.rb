# factorial_i.rb

def factorial_i(n)
  raise ArgumentError if n < 0
  return 1 if n == 0

  product = 1
  m = n
  until m == 1 do
    product *= m
    m -= 1 
  end
  product
end

