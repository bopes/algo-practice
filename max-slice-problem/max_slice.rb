# Find the maximum slice sum in an array of integers

def solution(a)

 current_max, max = 0, a[0]

  a.each do |int|
    current_max = [current_max + int, int].max
    max = [current_max, max].max
  end

  max

end

