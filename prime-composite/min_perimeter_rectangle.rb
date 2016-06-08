# Given an integer, find the minimum possible perimeter for a rectangle whose area equals the input and whose side lengths are integers.

def solution(n)

  a = 1

  i = 1
  while i**2 <= n
    a = i if n % i == 0
    i += 1
  end

  b = n / a

  2 * (a + b)

end

