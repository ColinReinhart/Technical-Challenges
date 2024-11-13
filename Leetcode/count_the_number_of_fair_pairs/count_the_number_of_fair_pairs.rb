# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def count_fair_pairs(nums, lower, upper)
  left = 0
  right = 1
  final = nums.length - 1
  count = 0

  until left == final
    until right == nums.length
      if nums[left] + nums[right] >= lower && nums[left] + nums[right] <= upper
        count += 1
      end
      right += 1
    end
    left += 1
    right = left +1
  end

  count
end

p count_fair_pairs([0,1,7,4,4,5], 3, 6) #6
p count_fair_pairs([1,7,9,2,5], 11, 11) #1
