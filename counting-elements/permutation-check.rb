# Given a non-zero array of positive integers, determine if the array contains a permutation. Time complexity should be O(N).

def solution(a)

  counts, perm = Hash.new, true

  for i in 1..a.length do
    counts[i] = 0
  end

  a.each do |elem|

    if elem > a.length
      perm = false
      break
    end

    counts[elem] += 1

    if counts[elem] == 2
      perm = false
      break
    end

  end

  perm = counts.all? { |num, count| count == 1 } if !(perm)

  perm ? 1 : 0

end

