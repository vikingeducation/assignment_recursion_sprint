def factorial_r(n)
  return 1 if (n == 1)

  factorial_r(n - 1) * n  

end


def factorial_i(n)
  acc = 1
  n.downto(1) do |i|
    acc *= i
  end

  acc
end

def sumdig_i(n)
  string = n.to_s
  array = string.split("")

  output = array.reduce do |sum, n|
    sum.to_i + n.to_i 
  end

  output

end

def sumdig_r(n)
  return n if (n >= 0) && (n <= 9)
  
  string = n.to_s
  array = string.split("")

  array.map! { |x| x.to_i }
  output = array.reduce do |sum, n|
    sumdig_r(sum) + sumdig_r(n)
  end
  output

end


p sumdig_r(103)

p sumdig_i(103)

