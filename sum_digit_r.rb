# write a iterative method that returns the sum of the digits
# 103 => 4
							#103
def sum_digit( num )

	arr = num.to_s.split("").map { | x | x.to_i }
	#base case num[ ] == nil
	first, *rest = arr
	return first if rest == []

	# return the first digit plus the sum of the remaining digits
	# first
	return first + sum_digit( rest.map{ | x | x.to_s }.join().to_i )


end