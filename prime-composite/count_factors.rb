# Find the count of factors for a given positive integer

def solution(n)

  factors_count = 0

  i = 1
  while i * i < n
    factors_count += 2 if n % i == 0
    i += 1
  end

  factors_count += 1 if i * i == n

  factors_count

end

