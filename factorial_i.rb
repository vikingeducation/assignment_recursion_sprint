require 'pry'

def factorial( num )

	arr = []

	while num > 1

		arr << num

		num -= 1

	end

	return arr.reduce( 1 ) { | r,e | r *= e }

end


# 1 - base case
# 2 * 1							= 2
# 3 * 2 * 1					= 6
# 4 * 3 * 2 * 1     = 24
# 5 * 4 * 3 * 2 * 1 = 120