# Recursive Digit Sum
# This solution takes advantage of the fact that
# Fixnum cannot have decimal points and doesn't round.
# So 103/10 -> 10.
def digsum_r(n)
	return 0 if n == 0
	return n%10 + digsum_r(n/10)
end

# Iterative Digit Sum
def digsum_i(n)
	sum = 0
	while n > 0
		sum += n%10
		n /= 10
	end
	sum
end