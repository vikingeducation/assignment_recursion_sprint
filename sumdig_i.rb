def sumdig_i(n)
	remaining_portion = n
	result = 0
	while remaining_portion > 9
		result += (remaining_portion % 10)
		remaining_portion = remaining_portion / 10
	end
	result += remaining_portion
end

p "Sum of 0 digits is #{sumdig_i(0)}"
p "Sum of 1 digits is #{sumdig_i(1)}"
p "Sum of 10 digits is #{sumdig_i(10)}"
p "Sum of 100 digits is #{sumdig_i(100)}"
p "Sum of 1347 digits is #{sumdig_i(1347)}"
