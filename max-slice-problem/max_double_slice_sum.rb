# Find the maximum sum of an array's double slices

def solution(a)

  a = a[1..-2]
  n = a.length

  bef_sums = Hash.new(0)
  aft_sums = Hash.new(0)

  i = 1
  while i < n do
    bef_sums[i] = [bef_sums[i-1] + a[i-1], a[i-1], 0].max
    i += 1
  end

  i = n - 2
  while i >= 0 do
    aft_sums[i] = [aft_sums[i+1] + a[i+1], a[i+1], 0].max
    i -= 1
  end

  max_sum = bef_sums[0] + aft_sums[0]

  i = 0
  while i < n do
    max_sum = [bef_sums[i] + aft_sums[i], max_sum].max
    i += 1
  end

  max_sum

end