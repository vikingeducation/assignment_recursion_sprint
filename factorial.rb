#recursive factorial
def factorial_r(number)
  return 1 if number == 1
  return number * factorial_r( number - 1 )
end

#puts "#{factorial_r(3)} #{factorial_r(4)}  #{factorial_r(5)}"
