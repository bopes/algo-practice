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



