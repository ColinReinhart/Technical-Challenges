# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)

  (0..nums.size).each do |n|
    nums.combination(n).each do |first|
      second = nums - first
      pair = [first, second]
      return true if first.sum == second.sum
    end
  end

  false
end

p can_partition([1,5,11,5]) #true
p can_partition([1,2,3,5]) #false
p can_partition([2,2,1,1]) #true
