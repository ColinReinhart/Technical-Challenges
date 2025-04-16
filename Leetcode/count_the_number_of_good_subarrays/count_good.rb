# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_good(nums, k)
  left = 0
  right = 0
  good_subarrays = 0
  pair_total = 0
  freq = Hash.new(0)

  while right < nums.length
    pair_total += freq[nums[right]]
    freq[nums[right]] += 1

    while pair_total >= k
      good_subarrays += nums.length - right
      freq[nums[left]] -= 1
      pair_total -= freq[nums[left]]
      left += 1
    end

    right += 1
  end

  good_subarrays
end

p count_good([1,1,1,1,1], 10) #1
p count_good([3,1,4,3,2,2,4], 2) #4
