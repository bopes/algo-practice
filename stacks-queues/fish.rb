# Count the number of fish remaining in a river, where the fish sizes and travel directions are given by input arrays.

def solution(a, b)

  fish = []

  i = 0
  while i < a.length do
    new_fish = {size: a[i], dir: b[i]}
    old_fish = fish.last

    if old_fish == nil || old_fish[:dir] <= new_fish[:dir]
      fish << new_fish
      i += 1
    elsif new_fish[:size] > old_fish[:size]
      fish = fish[0..-2]
    else
      i += 1
    end

  end

  fish.length

end