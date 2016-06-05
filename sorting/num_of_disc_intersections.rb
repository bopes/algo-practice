# Given an array of integers representing circles on a line centered on their index with a radius given by the their integer value, find the number of overlaps between these circles. Include circles taht share at least a single point of overlap.

def solution(a)

  ary = []

  a.each_with_index do |rad, cen|
    ary << { cen: cen, edge: cen - rad }
    ary << { cen: cen, edge: cen + rad }
  end

  ary = ary.reverse.sort_by { |circ| circ[:edge] }

  hash = Hash.new
  count = 0

  i = 0
  while i < ary.length do

    if hash.has_key?(ary[i][:cen])
      hash.delete(ary[i][:cen])
    else
      hash[ary[i][:cen]] = 1
      count += hash.length - 1
    end

    i += 1
  end

  count > 10000000 ? -1 : count

end