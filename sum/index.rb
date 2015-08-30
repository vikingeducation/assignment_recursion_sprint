def sumdig_r(n)
	if n == 0
		n
	else
		n + sumdig_r(n -1)
	end
end

def sumdig_i(n)
	result = 0
	until n == -1
		result += n
		n -= 1
	end
	result
end

if __FILE__ == $0
	10.downto(0) do |i|
		puts "sumdig_r(#{i}): #{sumdig_r(i)}"
	end
	10.downto(0) do |i|
		puts "sumdig_i(#{i}): #{sumdig_i(i)}"
	end
end