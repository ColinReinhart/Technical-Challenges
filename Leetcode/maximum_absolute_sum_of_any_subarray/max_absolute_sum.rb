# @param {Integer[]} nums
# @return {Integer}
def max_absolute_sum(nums)
  max = 0
  left = 0
  right = 0

  until left == nums.length do
    max = nums[left..right].sum.abs if nums[left..right].sum.abs > max
    if right < nums.length
      right +=1
    else
      left += 1
      right = left
    end
  end

  max
end

p max_absolute_sum([1,-3,2,3,-4]) #5
p max_absolute_sum([2,-5,1,-4,3,-2]) #8
