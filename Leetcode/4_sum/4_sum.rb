# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  arrays = []
  combinations = nums.combination(4).to_a

  combinations.each { |com| arrays << com.sort if com.sum == target }

  arrays.uniq
end

# p four_sum([1,0,-1,0,-2,2], 0) #[[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
# p four_sum([2,2,2,2,2], 8) #[[2,2,2,2]]
p four_sum([-5,5,4,-3,0,0,4,-2], 4) #[[-5,0,4,5],[-3,-2,4,5]]
