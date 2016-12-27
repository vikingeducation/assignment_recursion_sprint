def sumdig_r(n)
	if n < 10
		return n
	else
		return sumdig_r(n/10) + (n % 10)
	end
end

p "Sum of 0 digits is #{sumdig_r(0)}"
p "Sum of 1 digits is #{sumdig_r(1)}"
p "Sum of 10 digits is #{sumdig_r(10)}"
p "Sum of 100 digits is #{sumdig_r(100)}"
p "Sum of 1347 digits is #{sumdig_r(1347)}"
