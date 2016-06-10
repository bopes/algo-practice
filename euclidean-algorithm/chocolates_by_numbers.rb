# Given a circle of N chocolates, you eat the first one and then eat the Mth chocolate in the circle. How many do you eat?

def gcd(a,b)

  a % b == 0 ? b : gcd(b, a % b)

end

def solution(n, m)

  max = [n, m].max
  min = [n, m].min

  gcd = gcd(max, min)

  n / gcd

end