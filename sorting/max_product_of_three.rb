# Given an array of integers, find the largest product of any three elements

def solution(a)

  s = a.sort

  norm = s[-3] * s[-2] * s[-1]
  neg  = s[0]  * s[1]  * s[-1]

  [norm, neg].max

end
