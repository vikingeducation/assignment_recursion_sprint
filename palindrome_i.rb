def palindrome( string )

	# take in the string
	arr = []

	str = string.split('')

	until str == []

		arr << str.pop

	end

	arr.join == string ? true : false

end