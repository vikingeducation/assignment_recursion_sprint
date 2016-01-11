def sumdig_i(number)
  num_array = number.to_s.split("")
  num_array.inject(0) { |sum, element| sum + element.to_i }
end