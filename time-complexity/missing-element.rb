# Given an array for integers from 1 to N with one integer missing, find the missing integer.

def solution(a)

  a.sort!

  i = 0
  while i < a.length do
    break if a[i] == i + 2
    i += 1
  end

  i + 1

end

