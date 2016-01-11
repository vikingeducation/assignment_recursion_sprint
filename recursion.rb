

def factorial_r(n)
    return 1 if n == 0
    n * factorial_r( n-1 )
end

puts factorial_r(0)
puts factorial_r(5)

def factorial_i(n)
    return 1 if n == 0
    product = 1
    (1..n).each do |  number |
        product *= number
    end
    product
end

puts factorial_i(0)
puts factorial_i(5)

def digit_sum_r( n )
    return n if n >= 0 && n <= 9
    
    mod = n % 10
    quot = n /10

    mod + digit_sum_r( quot )
end

puts digit_sum_r(3)
puts digit_sum_r(4422118)

def digit_sum_i( n )
    n_str_arr = n.to_s.split("")
    n_str_arr.reduce( 0 ) { | sum, elt| sum += elt.to_i  }
end

puts digit_sum_i(3)
puts digit_sum_i(4422118)

def palindrome_r( str )
    return true if str.length == 1 || str.length == 0

    if str[0]  == str[-1]
        palindrome_r( str[1..-2] )
    else
        false
    end
end

puts palindrome_r("racecar")
puts palindrome_r("notapalindrome")
puts palindrome_r("y")

def palindrome_i( str )
    ret_bool = true
    (0..str.length / 2).each do | index |
        ret_bool = ret_bool && str[index] == str[str.length - index - 1 ]
    end
    ret_bool
end

puts palindrome_i("racecar")
puts palindrome_i("notapalindrome")
puts palindrome_i("y")
