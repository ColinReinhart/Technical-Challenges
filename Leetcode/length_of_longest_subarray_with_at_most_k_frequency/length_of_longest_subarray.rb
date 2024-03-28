# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_subarray_length(nums, k)
  max_length = 0
  left = 0
  count_to_remove = 0
  frequency = Hash.new(0)

  nums.each_with_index do |num, right|
    frequency[num] += 1

    if frequency[num] > k
      count_to_remove += 1
      while count_to_remove > 0
        frequency[nums[left]] -= 1
        count_to_remove -= 1 if frequency[nums[left]] == k
        left += 1
      end
    end

    max_length = [max_length, right - left + 1].max
  end

  max_length
end



puts max_subarray_length([1,2,3,1,2,3,1,2], 2) # 6
puts max_subarray_length([1,2,1,2,1,2,1,2], 1) # 2
puts max_subarray_length([5,5,5,5,5,5,5], 4) # 4
puts max_subarray_length([1,4,4,3], 1) # 2
puts max_subarray_length([1], 1) # 1
puts max_subarray_length([1,11], 2) # 2
puts max_subarray_length([1,1,2], 2) # 2
