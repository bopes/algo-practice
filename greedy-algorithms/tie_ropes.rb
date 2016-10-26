# Given an array of rope lengths, find the maximum number of ropes of length >= k you can make by tying the shorter ropes together

def solution(k, a)

  count = 0
  rope = 0

  a.each do |num|
    rope += num
    if rope >= k
      count += 1
      rope = 0
    end
  end

  count

end