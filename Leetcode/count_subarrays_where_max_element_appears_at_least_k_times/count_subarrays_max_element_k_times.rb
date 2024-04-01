# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_subarrays(nums, k)
  return 0 if k > nums.length
  arr = []
  hash = Hash.new(0)
  count = 0
  max = nums.max
  wip = k-1
  left = 0
  right = wip

  until left == 0 && right == nums.length do
    while right < nums.length do
      nums[left..right].each { |num| hash[num] += 1 }
      if hash[max] >= k
        count += 1
        arr << nums[left..right]
      end
      left += 1
      right += 1
      hash = Hash.new(0)
    end
    left = 0
    wip += 1
    right = wip
  end
  return count
end

p count_subarrays([1,3,2,3,3], 2) # 6
p count_subarrays([1,4,2,1], 3) # 0
