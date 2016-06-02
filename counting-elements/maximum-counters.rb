# Given a set of counters and an array of integers, go through the array and increase the counter corresponding to the integer by one, or increase all counters to match the current highest counter if the integer doesn't correspond to a counter.

def solution(n, a)

  counters = Hash.new(0)
  current_max = 0

  a.each do |num|
    if num <= n
      index = num
      counters[index] += 1
      current_max = counters[index] if current_max < counters[index]
    else
      counters = Hash.new(current_max)
    end
  end

  results = []

  for i in 1..n do
    results << counters[i]
  end

  results

end
