# Given an array of integers, find the number of unique value it contains.


def solution(a)

  sorted = a.sort

  i, uniq_count = 0, 0

  while i < sorted.length do
    uniq_count += 1 if sorted[i] != sorted[i+1]
    i += 1
  end

  uniq_count

end

# Alternative solution:



def solution_2(a)

  uniq = Hash.new

  a.each do |int|
    uniq[int] = 1
  end

  uniq.length

end

