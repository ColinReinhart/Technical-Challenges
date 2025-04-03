# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
  max_result = 0
  max_left = nums[0]

  (1...nums.length - 1).each do |j|
    k = j + 1
    while k < nums.length
      value = (max_left - nums[j]) * nums[k]
      max_result = value if value > max_result
      k += 1
    end
    max_left = nums[j] if nums[j] > max_left
  end

  max_result
end

p maximum_triplet_value([12,6,1,2,7]) #77
p maximum_triplet_value([1,10,3,4,19]) #133
p maximum_triplet_value([1,2,3]) #0
