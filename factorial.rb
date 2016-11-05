
def recursive_factorial(n)
  raise "Enter a number > -1" if n < 0
  n <= 1 ? 1 : (n * recursive_factorial(n - 1))
end

def iterative_factorial(n)
  raise "Enter a number > -1" if n < 0
  factorial = 1
  n.downto(2) { |number| factorial *= number }
  factorial
end

