# Given an array of integers representing heights, find the smallest number of blocks needed to match those heights as a wall.

def solution(h)

  prev_heights, count = [], 0

  i = 0
  while i < h.length do

    while true do
      if prev_heights.empty? || h[i] > prev_heights.last
        prev_heights << h[i]
        count += 1
        break
      elsif h[i] == prev_heights[-1]
        prev_heights << h[i]
        break
      else
        prev_heights.pop
      end
    end

    i += 1
  end

  count

end

