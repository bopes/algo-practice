# Given an array, return the maxium number of subarrays of equal length, each containing at least one of the array's original peaks, the array can be divided into.

def solution(a)

  n = a.length
  peaks = []

  for i in 1..n-2
    peaks << i if a[i-1] < a[i] && a[i] > a[i+1]
  end

  max = 0

  for i in 1..n
    num_groups = n - i + 1
    next if n % num_groups != 0

    size = n / num_groups
    filled_groups = 0

    for peak in 0..peaks.length-1
      filled_groups += 1 if peaks[peak] / size == peaks[peak-1] / size + 1 || peak == 0
    end

    if filled_groups == num_groups
      max = num_groups
      break
    end

  end

  max

end

