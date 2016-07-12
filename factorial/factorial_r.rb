# factorial_r.rb

def factorial_r(n)
  raise ArgumentError if n < 0
  
  if n == 0
    1
  else
    n * factorial_r(n-1)
  end
end

