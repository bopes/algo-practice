# Find the count of equi leaders in a given array. An equi leader is then index where the same leader exists for the subarray before and including the index, and the subarray after it.

def solution(a)

  counts = Hash.new(0)
  leader = nil

  a.each do |int|
    counts[int] += 1
    leader = int if counts[int] > a.length / 2
  end

  equi = []

  if leader

    count_1 = 0
    count_2 = counts[leader]

    i = 0
    while i < a.length

      if a[i] == leader
        count_1 += 1
        count_2 -= 1
      end

      i += 1

      equi << i if count_1 > i / 2 && count_2 > (a.length - i) / 2

    end

  end

  equi.length

end

