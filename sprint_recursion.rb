#sprint_recursion.rb

def factorial_r(n)
  return 1 if n <= 1
  n * factorial_r(n - 1)
end

# puts factorial_r(20)

def factorial_i(n)
  return 1 if n <= 1

  n.downto(1).reduce(1) do |product, item|
  product * item
  end

end

# puts factorial_i(7)
def sumdig_r(n)
  

   
end