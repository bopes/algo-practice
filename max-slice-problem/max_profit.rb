# Given an array representing stock prices, find the max profit available via a single buy and sell transaction.

def solution(a)

  current_slice = 0
  max_slice = 0

  i = 1
  while i < a.length do
    diff = a[i] - a[i-1]
    current_slice = [current_slice + diff, 0].max
    max_slice = [current_slice, max_slice].max
    i += 1
  end

  max_slice

end

