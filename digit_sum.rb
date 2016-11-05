
def recursive_sumdig(n, sum = 0)
  return sum if n == 0
  tokens = n.to_s.scan(/(-?\d)/).flatten
  leading_digit = tokens[0].to_i
  following_digits = tokens[1..-1].join.to_i
  sum = leading_digit + recursive_sumdig(following_digits)
  sum
end

def iterative_sumdig(n)
  sum = 0
  tokens = n.to_s.scan(/(-?\d)/).flatten
  tokens.each { |number| sum += number.to_i }
  sum
end

