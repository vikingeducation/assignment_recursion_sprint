def sumdig_r(num)
  return num if num == 0
  sumdig_r(num / 10) + (num % 10)
end

def sumdig_i(n)
  n = n.to_s.split("")
  new_arr = []
  n.each { |obj| new_arr << obj.to_i }

  new_arr.reduce(:+)
end
