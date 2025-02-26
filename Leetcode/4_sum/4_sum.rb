# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  nums.sort!  # Sorting helps in two-pointer approach
  n = nums.length
  results = []

  (0...n - 3).each do |i|
    next if i > 0 && nums[i] == nums[i - 1]  # Skip duplicates for i

    (i + 1...n - 2).each do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]  # Skip duplicates for j

      left, right = j + 1, n - 1
      while left < right
        sum = nums[i] + nums[j] + nums[left] + nums[right]

        if sum == target
          results << [nums[i], nums[j], nums[left], nums[right]]
          left += 1
          right -= 1

          while left < right && nums[left] == nums[left - 1]  # Skip duplicate left
            left += 1
          end

          while left < right && nums[right] == nums[right + 1]  # Skip duplicate right
            right -= 1
          end
        elsif sum < target
          left += 1
        else
          right -= 1
        end
      end
    end
  end

  results
end

p four_sum([1,0,-1,0,-2,2], 0) #[[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
p four_sum([2,2,2,2,2], 8) #[[2,2,2,2]]
p four_sum([-5,5,4,-3,0,0,4,-2], 4) #[[-5,0,4,5],[-3,-2,4,5]]
