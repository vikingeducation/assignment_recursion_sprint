def sumdig_r(num)
    
    return 0 if num == 0
    num if num/10 == 0
    (num % 10) + sumdig_r(num/10) 

end

#puts sumdig_r(105)

def sumdig_i(num)
    
    num_array = num.to_s.split("")
    num_sum = 0
    num_array.each do |number|
        num_sum += number.to_i
    end
    
    num_sum
    
end

#puts sumdig_i(105)