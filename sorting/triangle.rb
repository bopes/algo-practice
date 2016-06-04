# Find if an array contains a triplet that can form a triangle. Time complexity is O(N*logN).

def solution(a)

  s = a.sort

  i, ans = 2, 0

  while i < s.length do
    if s[i] < s[i-1] + s[i-2] && s[i-1] < s[i] + s[i-2] && s[i-2] < s[i-1] + s[i]
      ans = 1
      break
    end
    i += 1
  end

  ans

end