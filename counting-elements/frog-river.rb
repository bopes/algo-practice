# Given an array of integers and a target, find the earliest index in the array before which (inclusive) all integers less than or equal to the target have been included. Time complexity should be O(N).

def solution(x, a)

  spaces = Hash.new

  for i in 1..x do
    spaces[i] = nil
  end

  i = 0
  while i < a.length do
    spaces.delete(a[i])
    break if spaces.empty?
    i += 1
  end

  spaces.empty? ? i : -1

end

