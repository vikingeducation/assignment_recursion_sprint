def factorial_i(num)
  total = 1
  1.upto(num) do |iter|
    if iter > 1
      total *= iter
    end
  end
  total
end

puts factorial_i(6)