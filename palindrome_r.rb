def palindrome_r(string)
	if string.size == 0 || string.size == 1
		return true
	else
		last_m_1 = string.size - 1
		if string[0] == string[last_m_1]
			palindrome_r(string[1..last_m_1-1])
		else
			return false
		end
	end
end

string1 = "motor"
string2 = "rotor"
string3 = "aaabbb"
string4 = "daddad"
string5 = "cap"

p "#{string1} is palindrome #{palindrome_r(string1)}"
p "#{string2} is palindrome #{palindrome_r(string2)}"
p "#{string3} is palindrome #{palindrome_r(string3)}"
p "#{string4} is palindrome #{palindrome_r(string4)}"
p "#{string5} is palindrome #{palindrome_r(string5)}"