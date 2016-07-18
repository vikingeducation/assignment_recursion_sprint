def palindrome( string )

	return true if string.length == 0 || string.length == 1

	if string[ 0 ] == string[ -1 ]
		new_string = string[1..string.length - 2]
		palindrome( new_string )
	else
		return false
	end


end