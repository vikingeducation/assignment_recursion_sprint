


def sum_digit( num )

	arr = num.to_s.split("").map { |x| x.to_i }

	return arr.reduce( 0 ){ | r, e | r += e }

end