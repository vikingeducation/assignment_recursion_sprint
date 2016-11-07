def factorials(num)
  return 1 if num == 1 || num == 0
  num * factorials(num-1)
end

def non_rec_factorials(num)
  return 1 if num == 0
  start = num
  num.downto(1) do |int|
    num = num * int unless int == start
  end
  num
end

def digit_sum(num)
  split = num.to_s.split("")
  split = split.inject(0) {|total, i| total += i.to_i}
  return split if split / 10 == 0
  digit_sum(split)
end

def non_rec_digit_sum(num)
end

