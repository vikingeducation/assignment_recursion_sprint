# ----------------------------------------------------------------------------
# Factorial
# ----------------------------------------------------------------------------

# The Factorial Sequence, denoted n! is a classic recursive challenge and a
# good warmup. In it, each number is the sum of the multiples of every number
# prior to it. This is interesting because n! = n * (n-1)!, which aught to get
# your creative juices flowing.

def factorial_r(n)
  return 1 if n.zero?
  n * factorial(n-1)
end

def factorial_i(n)
  (1..n).reduce(&:*)
end

# ----------------------------------------------------------------------------
# Digit Sum
# ----------------------------------------------------------------------------

# Write a recursive method sumdig_r which takes an integer and returns the
# sum of its digits, for instance sumdig_r(103) => 4. Don't forget about mod %!

def sumdig_r(n)
  if n.is_a? Integer
    sumdig_r(n.to_s)
  elsif n.empty?
    0
  else
    n[0].to_i + sumdig_r(n[1..-1])
  end
end

def sumdig_i(n)
  acc, string = 0, n.to_s
  (0...string.length).each{ |i| acc += string[i].to_i }
  acc
end
