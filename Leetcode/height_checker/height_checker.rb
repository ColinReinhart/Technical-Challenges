# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  count = 0
  sorted = heights.sort
  heights.each_with_index { |x, i| x != sorted[i] ? count += 1 : 0 }
  count
end

p height_checker([1,1,4,2,1,3])
# => 3

p height_checker([5,1,2,3,4])
# # => 5

p height_checker([1,2,3,4,5])
# # => 0
