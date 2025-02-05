# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def distinct_numbers(nums, k)
  arr = []
  l = 0
  r = k - 1

  until r == nums.length do
    arr << nums[l..r].uniq.count
    l += 1
    r += 1
  end

  arr
end

p distinct_numbers([1,2,3,2,2,1,3], 3) #[3,2,2,2,3]
p distinct_numbers([1,1,1,1,2,3,4], 4) #[1,2,3,4]
