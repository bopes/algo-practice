# Count minium jumps to cover a certain distance

def solution(x, y, d)

  distance = y - x

  if distance % d == 0
    distance / d
  else
    distance / d + 1
  end

end

