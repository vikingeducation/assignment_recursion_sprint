def factorial_r(num)

  if num == 1 || num == 0
    return 1
  else
    return num * factorial_r(num - 1)
  end

end

def factorial_i(num)

  ans = 1
  num.downto(1) do |value|
    ans *= value
  end

  ans
end

puts factorial_r(3).to_s
puts factorial_i(3).to_s