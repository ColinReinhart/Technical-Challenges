# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  nums.sort!
  point = 1

  until nums[0..point].sum > nums[point+1..-1].sum || nums[point] == nil
    if nums[0..point].sum == nums[point+1..-1].sum
      return true
    else
      point += 1
    end
  end

  false
end

# p can_partition([1,5,11,5]) #true
# p can_partition([1,2,3,5]) #false
p can_partition([2,2,1,1]) #true
