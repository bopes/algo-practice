# Given an array of integers, find the first index of the slice with the samllest average value.

def solution(a)

  index = 0
  min_avg = a.max

  i = 0
  while i < a.length - 1 do
    avg = (a[i] + a[i+1]) / 2.0
    if avg < min_avg
      index = i
      min_avg = avg
    end
    i += 1
  end

  j = 0
  while j < a.length - 2 do
    avg = (a[j] + a[j+1] + a[j+2]) / 3.0
    if avg < min_avg
      index = j
      min_avg = avg
    end
    j += 1
  end

  index

end