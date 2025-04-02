# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
  max = 0
  left = 0
  cent = 1
  right = 2

  (0...nums.length - 2).each do |left|
    ((left + 1)...nums.length - 1).each do |cent|
      ((cent + 1)...nums.length).each do |right|
       value = (nums[left] - nums[cent]) * nums[right]
       max = value if value > max
     end
   end
  end
  max
end

p maximum_triplet_value([12,6,1,2,7]) #77
p maximum_triplet_value([1,10,3,4,19]) #133
p maximum_triplet_value([1,2,3]) #0
