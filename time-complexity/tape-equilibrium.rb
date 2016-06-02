# Given an array with at least 2 elements, find the smallest absolute value difference between the elements before and after (inclusive) a central pivot index.

def solution(a)

  sum_1 = a[0]
  sum_2 = a[1..-1].inject { |sum, elem| sum + elem }

  diff = (sum_1 - sum_2).abs

  a[1..-2].each do |elem|
    sum_1 += elem
    sum_2 -= elem
    new_diff = (sum_1 - sum_2).abs
    diff = new_diff if diff > new_diff
  end

  diff

end

