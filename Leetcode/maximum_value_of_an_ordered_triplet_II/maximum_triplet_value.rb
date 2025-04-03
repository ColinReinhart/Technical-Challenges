# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
  j = 1
  result = 0
  len = nums.length
  left_max = nums[0]
  right_max = nums[j + 1...len].max

  while j < len - 1
    result = [(left_max - nums[j]) * right_max, result].max

    left_max = [nums[j], left_max].max
    j += 1
    if nums[j] == right_max
      right_max = nums[j + 1...len].max
    end
  end

  (result.positive? ? result : 0)
end

p maximum_triplet_value([12,6,1,2,7]) #77
p maximum_triplet_value([1,10,3,4,19]) #133
p maximum_triplet_value([1,2,3]) #0
