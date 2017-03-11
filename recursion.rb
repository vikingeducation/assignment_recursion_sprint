def factorial_r(n)
	return  1 if n == 0
	n * factorial_r(n-1)
end

puts factorial_r(6)