def factorial_r(num)
  return 1 if num == 1
  num * factorial_r(num-1)
end

def factorial_i(num)
  (1..num).to_a.reduce do |a,b|
    a * b
  end
end
