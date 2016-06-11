# Given two sibling arrays a and b, find the number of distinct ways to climb a ladder with a[i] rungs by either 1 or 2 rungs at a time. Return an array of the answers % b[i].

def solution(a, b)

  n = a.length
  max = a.max

  fibs = [1, 1]

  while fibs.length <= max do
    fibs << fibs[-1] + fibs[-2]
  end

  results = []

  i = 0
  while i < n do
    results << fibs[a[i]] % 2**b[i]
    i += 1
  end

  results


end