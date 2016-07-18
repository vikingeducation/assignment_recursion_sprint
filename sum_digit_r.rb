def sum_digit( num )

	arr = num.to_s.split("").map { | x | x.to_i }

	first, *rest = arr
	return first if rest == []

	return first + sum_digit( rest.map{ | x | x.to_s }.join().to_i )


end