# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_distance_pair(nums, k)
  nums.sort!

  def count_pairs(nums, guess)
    count = 0
    left = 0

    nums.each_with_index do |num, right|
      while num - nums[left] > guess
        left += 1
      end
      count += right - left
    end

    count
  end

  left = 0
  right = nums[-1] - nums[0]

  while left < right
    mid = (left + right) / 2

    if count_pairs(nums, mid) >= k
      right = mid
    else
      left = mid + 1
    end
  end

  left
end

p smallest_distance_pair([1,3,1], 1) #0
p smallest_distance_pair([1,1,1], 2) #0
p smallest_distance_pair([1,6,1], 3) #5
