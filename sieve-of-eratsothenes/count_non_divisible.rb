# Given an array of integers, map it to a count of the elements that aren't divisble into the base element. Time complexity should be O(N*log(N)).

def solution(a)

  n = a.length

  count = Hash.new(0)
  a.each do |int|
    count[int] += 1
  end

  divisors = Hash.new()
  count.keys.each do |int|
    i = 1
    divisors[int] = []
    while i * i <= int  do
      if int % i == 0
        divisors[int] << i
        divisors[int] << int / i if i * i != int
      end
      i += 1
    end
  end

  non_divisors = Hash.new(n)
  count.keys.each do |int|
    divisors[int].each do |div|
      non_divisors[int] -= count[div]
    end
  end

  a.map { |int| non_divisors[int] }

end



# NOTE: The following solutions did not achieve the desired time complexity. They acheived O(N**2)

# Brute force:

def solution2(a)

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

# Slightly Better:

def solution3(a)

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