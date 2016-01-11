#recursive sumdig
def sumdig_r(number)
  return number if number.to_s.length == 1
  return (number % 10) + sumdig_r(number / 10)
end

#iterative sumdig
def sumdig_i(number)
  sum = 0
  until number.to_s.length == 1 && number == 0
    sum += number % 10
    number = number / 10
  end
  return sum
end

#puts "#{sumdig_r(103)} #{sumdig_r(999)} #{sumdig_r(8)}"
#puts "#{sumdig_i(103)} #{sumdig_i(999)} #{sumdig_i(8)}"
