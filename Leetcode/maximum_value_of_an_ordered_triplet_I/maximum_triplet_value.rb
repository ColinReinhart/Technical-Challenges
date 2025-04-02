# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
  max = 0
  left = 0
  cent = 1
  right = 2

  until left == nums.count - 2
    max = (nums[left] - nums[cent]) * nums[right] if (nums[left] - nums[cent]) * nums[right] > max
    if right < nums.count - 1
      right += 1
    elsif cent < nums.count - 2
      cent += 1
      right = cent + 1
    elsif left < nums.count - 3
      left += 1
      cent = left + 1
      right = cent + 1
    else
      left += 1
    end
  end
  max
end

p maximum_triplet_value([12,6,1,2,7]) #77
p maximum_triplet_value([1,10,3,4,19]) #133
p maximum_triplet_value([1,2,3]) #0
