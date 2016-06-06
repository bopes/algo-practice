# Given an array, return the index of an instance of the array's dominator. If there is no dominator, return -1.

def solution(a)

  n = a.length
  base, size = nil, 0
  answer = -1

  a.each do |int|
    if size == 0
      base = int
      size += 1
    else
      if base == int
        size += 1
      else
        size -= 1
      end
    end
  end

  if size > 0

    i, count = 0, 0

    while i < n do
      count += 1 if a[i] == base
      if count / n.to_f > 0.5
        answer = i
        break
      end
      i += 1
    end

  end

  answer

end