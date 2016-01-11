#recursive factorial
def factorial_r(number)
  return 1 if number == 1
  return number * factorial_r( number - 1 )
end

#iterative factorial
def factorial_i(number)
  result = 1
  (number).downto(1).each do |factor|
    result *= factor
  end
  result
end

#puts "#{factorial_r(3)} #{factorial_r(4)} #{factorial_r(5)}"
#puts "#{factorial_i(3)} #{factorial_i(4)} #{factorial_i(5)}"
