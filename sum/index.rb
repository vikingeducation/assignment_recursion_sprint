def sumdig_r(n)
  if n < 10
    n
  else
    sumdig_r(n / 10) + sumdig_r(n % 10)
  end
end

def sumdig_i(n)
	result = 0
	until n <= 1
    result += n % 10
    n /= 10 if n > 10
  end
  result += n
	result
end

if __FILE__ == $0
  i = 1234506
  puts "sumdig_r(#{i}): #{sumdig_r(i)}"
  puts "sumdig_i(#{i}): #{sumdig_i(i)}"
end

