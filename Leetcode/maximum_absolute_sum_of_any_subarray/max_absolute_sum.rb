# @param {Integer[]} nums
# @return {Integer}
def max_absolute_sum(nums)
  max_sum = 0
  min_sum = 0
  current_max = 0
  current_min = 0

  nums.each do |num|
    current_max = [num, current_max + num].max  # Kadane for max sum
    current_min = [num, current_min + num].min  # Kadane for min sum

    max_sum = [max_sum, current_max].max
    min_sum = [min_sum, current_min].min
  end

  [max_sum, min_sum.abs].max  # Return max absolute value
end

p max_absolute_sum([1,-3,2,3,-4]) #5
p max_absolute_sum([2,-5,1,-4,3,-2]) #8
