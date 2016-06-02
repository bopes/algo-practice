# Given an array, move all elements after that index to the beginning of the array a certain number of times

def solution(a, k)

  if a != []
    k.times do
      a = [a[-1]] + a[0..-2]
    end
  end

  a

end



