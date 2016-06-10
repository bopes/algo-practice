# Find the count of semiprimes between two values given by sibling arrays

def solution(n, p, q)

  m = p.length

  p_n = Array.new(n+1, true)
  p_n[0], p_n[1] = false, false

  i = 2
  while i * i <= n do
    if p_n[i]
      k = i * i
      while k <= n
        p_n[k] = false
        k += i
      end
    end
    i += 1
  end

  p_p = []

  i = 2
  while i <= n/2 do
    p_p << i if p_n[i]
    i += 1
  end

  sp = Hash.new(false)

  i = 0
  while i < p_p.length do
    j = i
    while j < p_p.length do
      semi = p_p[i] * p_p[j]
      sp[semi] = true if semi <= n
      j += 1
    end

    i += 1
  end

  sp_so_far = []
  sp_count = 0

  i = 0
  while i <= n do
    sp_count += 1 if sp[i]
    sp_so_far << sp_count
    i += 1
  end

  counts = Array.new

  i = 0
  while i < m do
    counts[i] = sp_so_far[q[i]] - sp_so_far[p[i]-1]
    i += 1
  end

  counts

end
