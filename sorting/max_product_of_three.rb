# Given an array of integers, find the largest product of any three elements

def solution(a)

  s = a.sort
  s_neg = s.select { |int| int < 0 }


  norm = s[-3] * s[-2] * s[-1]

  some_neg = s[0] * s[1] * s[-1]

  if s_neg.length > 3
    all_neg = s_neg[-3] * s_neg[-2] * s_neg[-1]
  else
    all_neg = norm
  end

  [norm, some_neg, all_neg].max

end

