def largest_divisible_subset(nums)
  return [] if nums.empty?

  nums.sort!

  n = nums.length
  dp = Array.new(n, 1)
  prev_indices = Array.new(n, -1)

  max_length = 1
  max_index = 0

  (1...n).each do |i|
    (0...i).each do |j|
      if nums[i] % nums[j] == 0 && dp[i] < dp[j] + 1
        dp[i] = dp[j] + 1
        prev_indices[i] = j
        if dp[i] > max_length
          max_length = dp[i]
          max_index = i
        end
      end
    end
  end

  result = []
  while max_index != -1
    result.unshift(nums[max_index])
    max_index = prev_indices[max_index]
  end

  result
end

p largest_divisible_subset([1,2,3])
p largest_divisible_subset([1,2,4,8])
p largest_divisible_subset([5, 6])
