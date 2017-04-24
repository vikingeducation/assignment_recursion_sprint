def sumdig_r(n)
  
end

def sumdig_i(n)
	sum = 0
	
	n.to_s.split("").each{ |i| sum += i.to_i }

	sum
end