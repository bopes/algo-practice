# Given an array of sides, find the number of possible triangles.

def solution(a)

  a = a.sort
  n = a.length
  count = 0

  for i in 0..n-1 do
    k = i + 2

    for j in i+1..n-1 do

      while k < n && a[i] + a[j] > a[k]
        k += 1
      end

      count += k - j - 1

    end

  end

  count

end

