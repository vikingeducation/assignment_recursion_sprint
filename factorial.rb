def factorial_r(n)

  if n == 1
    return 1
  else
    n * factorial_r(n-1)
  end

end

def factorial_i(n)

  total = 1
  (1..n).each do |num|
    total *= num
  end
  total

end

puts factorial_r(5)
puts "---"
puts factorial_i(5)
