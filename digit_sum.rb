def sumdig_r(n)
  
  return i if n < 10
  
  remainder = n / 10

  (n % 10) + sumdig_r(remainder)
  
end

def sumdig_i(n)
	sum = 0
	
	n.to_s.split("").each{ |i| sum += i.to_i }

	sum
end