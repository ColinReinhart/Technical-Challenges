# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  if nums == nums.sort
    return true
  elsif nums == nums.sort_by { |num| -num}
    return true
  else
    return false
  end
end

p is_monotonic([1,2,2,3])
p is_monotonic([6,5,4,4])
p is_monotonic([1,3,2])
