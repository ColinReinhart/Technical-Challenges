# @param {Integer[]} nums
# @return {Integer}
def minimum_replacement(nums)
  steps_count = 0
  nums.each_with_index do |num, i|
    if nums[i+1] == nil
      return steps_count
    elsif num > nums[i+1]
      x = num - nums[i+1]
      nums.insert(i, nums[i+1], x)
      nums.delete(num)
      steps_count += 1
      require 'pry'; binding.pry
    else num < nums[i+1]
    end
  end
end

p minimum_replacement([3,9,3])
p minimum_replacement([1,2,3,4,5])
p minimum_replacement([2,10,20,19,1])
