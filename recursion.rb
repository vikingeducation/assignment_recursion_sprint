def sumdig_r(num)
    return num if num / 10 == 0 
    sumdig_r(num / 10) + (num % 10)
end

def sumdig_i(num)
    sum = 0
    while num > 0 
      sum += num % 10
      num /= 10
    end
    sum
end       


def factorial_r(max)
    return 1 if max == (0 || 1)
    return max * factorial_r(max -1)
end

def factorial_i(max)

    return 1 if max == 0
    prod = 1
    max.downto(1) do |num| 
     prod *= num
    end 
    prod
end


def palindrome_r(str)
    return true if str.length <= 1
    str[0] == str[-1] ? (palindrome_r(str[1...(str.length - 1)])) : (false)
end

def palindrome_i(str)
    
    (str.length/2).times do |index|
      return false if str[index] != str[str.length - index - 1]
    end
    true
end