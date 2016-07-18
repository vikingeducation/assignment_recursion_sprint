def factorial( num )

	arr = []

	while num > 1

		arr << num

		num -= 1

	end

	return arr.reduce( 1 ) { | r,e | r *= e }

end
