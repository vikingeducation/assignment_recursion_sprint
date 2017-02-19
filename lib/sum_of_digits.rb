
# Takes an integer and returns the sum of its digits, for instance sumdig_r(103) => 4.
# Recursive sum of digits
def sumdig_r(n)

  # puts "#{n} and n /10 is #{n/10} and n%10 is #{n%10}"

  if (n<10) 
    return n
  else
    return n%10 + sumdig_r(n/10)
  end
end

# Iterative sum of digits
def sumdig_i(n)
# Shortcut for .map on array, and for each element in the array, returns the result of calling to_i on that element.
  return n.to_s.chars.map(&:to_i).reduce(:+)
end