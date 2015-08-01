def factorial_r(num)
   if num == 1
       1
   else
       num * factorial_r(num-1)
   end
end

#puts factorial_r(5)

def factorial_i(num)
   return 0 if num == 0
   product = 1
   1.upto(num) do |numget|
       product *= numget
   end
   product
end

#puts factorial_i(5)