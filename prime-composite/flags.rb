# Determine the maximum number of falgs that can be placed on an array's peaks, when flags cannot be placed within the same number of spaces as flags brought

def solution(a)
  n = a.length
  peaks = []

  for i in 1..n-2
    peaks << i if a[i-1] < a[i] && a[i] > a[i+1]
  end

  max_flags = 0
  peaks.length.downto(1) do |flags_brought|
    next if (flags_brought - 1) * flags_brought + 2 > n

    placed = 1
    last_flag = peaks[0]

    peaks[1..-1].each do |peak|
      next if peak - last_flag < flags_brought

      placed += 1
      last_flag = peak
      break if placed >= flags_brought
    end

    max_flags = [max_flags, placed].max
  end
  max_flags
end