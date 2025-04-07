# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  n = nums.size

  (0...(1 << n)).each do |mask|
    left = []
    right = []

    nums.each_with_index do |val, i|
      if mask[i] == 1
        left << val
      else
        right << val
      end
    end

    return true if left.sum == right.sum
  end

  false
end

p can_partition([1,5,11,5]) #true
p can_partition([1,2,3,5]) #false
p can_partition([2,2,1,1]) #true
p can_partition([1,1]) #true
