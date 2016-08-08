def factorial_r(number)
	return 0 if number == 0
	return 1 if number == 1
	return number * factorial(number - 1)
end

def factorial_i(number)
	total = 1
	while number > 0
		total *= number 
		number -= 1
	end
	total
end