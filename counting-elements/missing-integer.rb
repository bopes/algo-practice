# Given an array of integers, find the smallest positive integer that isn't included in the array

def solution(a)

  ints = Hash.new

  for i in 1..a.length + 1 do
    ints[i] = nil
  end

  a.each do |num|
    ints.delete(num)
  end

  ints.first[0]

end

