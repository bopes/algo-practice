def solution(s, p, q)

  counts = Hash.new
  nucs = ["A", "C", "G", "T"]

  nucs.each do |nuc|
    counts[nuc] = 0
  end

  s_a = s.split("")
  s_h = []

  i = 0
  while i < s_a.length do
    counts[s_a[i]] += 1
    dummy = Hash.new
    counts.each do |nuc, count|
      dummy[nuc] = count
    end
    s_h << dummy
    i += 1
  end

  r_h = []

  i = 0
  while i < p.length do
    diff = Hash.new
    if p[i] == 0
      diff = s_h[q[i]]
    else
      nucs.each do |nuc|
        diff[nuc] = s_h[q[i]][nuc] - s_h[p[i]-1][nuc]
      end
    end
    r_h << diff
    i += 1
  end

  r = []

  r_h.each do |hash|
    if hash["A"] > 0
      r << 1
    elsif hash["C"] > 0
      r << 2
    elsif hash["G"] > 0
      r << 3
    else
      r << 4
    end
  end

  r

end