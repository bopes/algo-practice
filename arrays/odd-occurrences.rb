# Given an array with odd num of elements, all duplicates except one, find the sole non-duplicated elements

def solution(a)

  counts = Hash.new(0)

  a.each do |num|
    counts[num] += 1
    counts.delete(num) if counts[num] == 2
  end

  counts.key(1)

end