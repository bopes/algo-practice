# Given an array of integers, map it to a count of the elements that aren't divisble into the base element.

# NOTE: Performance should be O(N*log(N)). The following solutions did not achieve that.

# O(N**2):

def solution1(a)

  counts = Hash.new(0)

  a.each do |int|
    counts[int] += 1
  end

  non_divisors = []

  a.each do |int|
    div_count = 0
    for i in 1..int do
      div_count += counts[i] if int % i == 0
    end
    non_divisors << a.length - div_count
  end

  non_divisors

end

# Better O(N**2):

def solution2(a)

  n = a.length

  count = Hash.new(0)
  a.each do |int|
    count[int] += 1
  end

  non_divisors = Hash.new(0)
  count.keys.each do |int_1|
    count.keys.each do |int_2|
      non_divisors[int_1] += count[int_2] if int_1 % int_2 != 0
    end
  end

  a.map { |int| non_divisors[int] }


end



