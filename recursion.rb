def factorial_r(n)
	return  1 if n == 0
	n * factorial_r(n-1)
end

puts factorial_r(6)


def factorial_i(n)
	sum = 1
	until n == 0
		sum = sum * n
		n = n -1
	end
	sum
end

puts factorial_i(6)