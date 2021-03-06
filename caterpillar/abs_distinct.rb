# Given a sorted array, find the number of distinct absolute values it contains.

def solution(a)

  n = a.length
  used_values = Hash.new

  for i in 0..n-1
    used_values[a[i].abs] = true
  end

  used_values.length

end

