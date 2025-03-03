# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
  high = []
  equal = []
  low = []

  nums.each do |num|
    if num == pivot
      equal << num
    elsif num < pivot
      low << num
    else
      high << num
    end
  end

  [low, equal, high].flatten
end

p pivot_array([9, 12, 3, 5, 14, 10, 10], 10)
# => [9, 3, 5, 10, 10, 12, 14]
p pivot_array([-3,4,3,2], 2)
# => [-3, 2, 4, 3]
