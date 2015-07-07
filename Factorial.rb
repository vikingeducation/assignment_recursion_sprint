
def factorial_r(n)

  return 1 if n==1

  return n*factorial_r(n-1)

end


def factorial_i(n)
res=1
  until n==1
    res*=n
    n-=1
  end

  return res

end

#puts factorial_r(4)

#puts factorial_i(4)