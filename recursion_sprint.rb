def factorial_r(num)
  return 1 if num == 1 || num == 0
  num * factorials(num-1)
end

def factorial_i(num)
  return 1 if num == 0
  start = num
  num.downto(1) do |int|
    num = num * int unless int == start
  end
  num
end

def sumdig_r(num)
  split = num.to_s.split("")
  split = split.inject(0) {|total, i| total += i.to_i}
  return split if split / 10 == 0
  digit_sum(split)
end

def sumdig_i(num)
  split = num
  continue = true
  while  continue == true
    split = split.to_s.split("")
    split = split.inject(0) {|total, i| total += i.to_i}
    continue = false if split / 10 == 0
  end
  split
end

def palindrome_r(str)
  return true if str.length == 1 || str.length == 0
  return false if str[0] != str[-1]
  str = str.split("")
  str.shift
  str.pop
  str = str.join
  palindrome_r(str)
end

def palindrome_i(str)
  while str.length !=1 || str.length == 0
    return false if str[0] != str[-1]
    str = str.split("")
    str.shift
    str.pop
    str = str.join
  end
  true
end