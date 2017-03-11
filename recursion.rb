def factorial_r(n)
	#base case
	return  1 if n == 0
	#recursive call
	n * factorial_r(n-1)
end

puts factorial_r(6)


def factorial_i(n)
	sum = 1
	#if n equals 0 stop loop
	until n == 0
		sum = sum * n
		n = n -1
	end
	sum
end

puts factorial_i(6)

def sumdig_r(n)
	#base case
	return n if n < 10
	#recursion call
	n % 10 + sumdig_r(n/10)
end

puts sumdig_r(103)

def sumdig_i(n)
 #puts number into an array
 num_arr = n.to_s.split("")
 #maps each element to integer class
 num_arr.map! {|number| number.to_i }
 #uses inject method to sum each number
 puts num_arr.inject(0) { |sum, x| sum + x }
end

sumdig_i(103)


def palindrome_r(str)
	#if only one character return true
	return true if str.length <= 1
	#if first char and last char are equal call recursive method
	if str[0] == str[-1]
		palindrome_r(str[1..-2])
	#return false if first and last char are not equal
	else
		false
  end
end

puts palindrome_r("rotor")


def palindrome_i(str)
	#creates new string array
  new_str = str.split("")
	#return true if new_str.length == 1
	until new_str.len== new_str[-1]
		   new_str.shift
		   new_str.pop
		end
	return true
end
