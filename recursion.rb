# FACTORIAL

def factorial_r(n)
  if n == 0
    1
  else
    n * factorial_r(n-1)
  end
end


def factorial_i(n)
  if n == 0
    result = 1
  else
    result = n
    until n == 2
      result *= (n-1)
      n -= 1
    end
  end
  result
end




# DIGIT SUM

def sumdig_r(n)
  sum = 0
  if n == 0
    sum
  else
   sum += n % 10 + sumdig_r(n/10)
 end
end


def sumdig_i(n)
  sum = 0
  if n == 0
    sum
  else
    split = n.to_s.split(//).each{|item| sum += item.to_i}
  end
  sum
end