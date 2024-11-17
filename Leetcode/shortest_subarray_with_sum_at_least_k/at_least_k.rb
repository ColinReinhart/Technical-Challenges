# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def shortest_subarray(nums, k)
    require 'pry'; binding.pry
end

p shortest_subarray([1], 1) #1
p shortest_subarray([1,2], 4) #-1
p shortest_subarray([2,-1,2], 3) #3
