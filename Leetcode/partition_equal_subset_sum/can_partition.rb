# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  total = nums.sum
  return false if total.odd?

  target = total / 2
  dp = Array.new(target + 1, false)
  dp[0] = true

  nums.each do |num|
    target.downto(num) do |j|
      dp[j] ||= dp[j - num]
    end
  end

  dp[target]
end

p can_partition([1,5,11,5]) #true
p can_partition([1,2,3,5]) #false
p can_partition([2,2,1,1]) #true
p can_partition([1,1]) #true
