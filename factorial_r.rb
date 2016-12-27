def factorial_r(n)
	if n == 1
		return 1
	else
		return n * factorial_r(n-1)
	end
end

p factorial_r(11)