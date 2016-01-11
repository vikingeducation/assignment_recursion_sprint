#recursive sumdig
def sumdig_r(number)
  return number if number.to_s.length == 1
  return (number % 10) + sumdig_r(number / 10)
end

puts "#{sumdig_r(103)} #{sumdig_r(999)} #{sumdig_r(10)}"
