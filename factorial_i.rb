def factorial_i(n)
	result = 1
	2.upto(n) do |number|
		result = result * number
	end
	result
end

p factorial_i(11)