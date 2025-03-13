# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Integer}
def min_zero_array(nums, queries)
  require 'pry'; binding.pry
end

p min_zero_array([2,0,2], [[0,2,1],[0,2,1],[1,1,3]]) #2
p min_zero_array([4,3,2,1],  [[1,3,2],[0,2,1]]) #2
