def sumdig_r(num)
  return num if num < 10
  sumdig_r(num/10) + sumdig_r(num%10)
end

def sumdig_i(num)
  num.to_s.split("").reduce do |a,b|
    a.to_i + b.to_i
  end
end
