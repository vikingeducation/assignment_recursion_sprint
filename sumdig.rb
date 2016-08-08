def sumdig_r(number)
	return number if number == 0
	return (number % 10) + sumdig_r(number / 10)
end

def sumdig_i(number)
	sum = 0
	while number != 0
		sum += number % 10
		number /= 10
	end
	sum
end