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




# class Nuc_obj

#   attr_reader :counts

#   def initialize(nuc, prev_nuc_obj)
#     if prev_nuc_obj == nil
#       counts = Hash.new(0)
#       counts[nuc] = 1
#     else
#       self.counts = prev_nuc_obj.counts
#       self.counts[nuc] += 1
#     end
#   end

#   def compare(prev_nuc_obj)
#     comparison = Hash.new(0)
#     ["A","C","G","T"].each do |nuc|
#       comparison[nuc] = self.counts[nuc] - prev_nuc_obj.counts[nuc]
#     end
#     ["A","C","G","T"].each_with_index do |nuc, index|
#       return index + 1 if counts[nuc] > 0
#     end
#   end

# end

# class Genome

#   def initialize(full_genome)
#     translated_genome = []
#     full_genome.each do |nuc|
#       translated_genome << Nuc_obj.new(nuc, translated_genome.last)
#     end
#   end

#   def compare(p, q)
#     comparison = Array.new
#     for i in 0..p.length
#       comparison << translated_genome[q[i]].compare(translated_genome[p[i]])
#     end
#     return comparison
#   end

# end

# def solution(s, p, q)

#   genome = Genome.new(s)
#   results = []

#   for i in 0..p.length
#     results << genome.compare(p[i], q[i])
#   end

#   results

# end