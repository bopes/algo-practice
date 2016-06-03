# Count the number of passing cars on the road. Cars are represented in an array, with 0's for cars going east and 1 for cars going west.

def solution(a)

  count_east_cars = 0
  count_pairs = 0

  a.each do |car|
    if car == 0
      count_east_cars += 1
    else
      count_pairs += count_east_cars
    end
  end

  count_pairs > 1000000000 ? -1 : count_pairs

end

