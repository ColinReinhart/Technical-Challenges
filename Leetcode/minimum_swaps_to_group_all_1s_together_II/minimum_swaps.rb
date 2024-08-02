# @param {Integer[]} nums
# @return {Integer}
def min_swaps(nums)
  n = nums.size
  count_ones = nums.sum

  return 0 if count_ones == 0 || count_ones == n

  extended_nums = nums * 2

  current_zeros = 0
  min_zeros = n

  (0...(2 * n)).each do |i|
    current_zeros += 1 if extended_nums[i] == 0

    if i >= count_ones
      current_zeros -= 1 if extended_nums[i - count_ones] == 0
    end

    if i >= count_ones - 1
      min_zeros = [min_zeros, current_zeros].min
    end
  end

  min_zeros
end

p min_swaps([0,1,0,1,1,0,0]) #1
p min_swaps([0,1,1,1,0,0,1,1,0]) #2
p min_swaps([1,1,0,0,1]) #0
