# Recursive Factorial

def factorial_r(n)
	return 1 if n == 1
	return n * factorial_r(n-1)
end

# Iterative Factorial
def factorial_i(n)
	final = n
	while n > 1
		final *= n-1
		n -= 1
	end
	final
end