# Count the number of slices in an array including only unique values. Max response is 1,000,000,000.

def solution(m, a)

  i, j = 0, 0
  count = 0
  used_values = Hash.new

  while j < a.length do
    if !used_values[a[j]]
      used_values[a[j]] = true
      count += used_values.length
      j += 1
    else
      used_values.delete(a[i])
      i += 1
    end
  end

  count > 1000000000 ? 1000000000 : count

end