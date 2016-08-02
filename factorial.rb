def factorial_r n
  # base case
  return 1 if n == 1
  # pattern
  n * factorial_r(n - 1)
end

def factorial_i n
  (1..n).inject(1){ |result, each| result *= each }
end
