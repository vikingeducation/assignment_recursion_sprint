def factorial_r(n)
	if n == 0
		1
	else
		n * factorial_r(n - 1)
	end
end

def factorial_i(n)
	result = 1
	until n == -1
		if n == 0
			result *= 1
		else
			result *= n
		end
		n -= 1
	end
	result
end

if __FILE__ == $0
	puts "factorial_r"
	10.downto(0) do |i|
		puts "factorial_r(#{i}): #{factorial_r(i)}"
	end
	puts "factorial_i"
	10.downto(0) do |i|
		puts "factorial_i(#{i}): #{factorial_i(i)}"
	end
end