def factorial_r(n)
  return 1 if n <= 1
  n * fac(n-1)
end

def factorial_i(num)
  (1..num).inject {|sum, n| sum * n}
end

def sumdig_i(n)
  arr = n.to_s.split("").map! {|x| x.to_i}
  k = 0
  arr.each {|x| k+= x}
  k
end

def sumdig_r(n)
  return n if n.to_s.length <= 1
  n.to_s[-1].to_i+sumdig_r(n.to_s[0..-2].to_i)
end

def palindrome_i(string)
  palin = true
  (0..((string.length/2)-1)).to_a.each do |i|
    palin = false if string[i] != string[-(i+1)]
  end
  palin
end

def palindrome_r(word)
  return true if word.length == 1 || word.length == 0
  if word[0] == word[-1]
    palindrome_r(word[1..-2])
  else
    return false
  end
end
