# @param {Integer[]} nums
# @return {Integer}
def max_frequency_elements(nums)
  count = 0
  hash = Hash.new(0)
  nums.each { |x| hash[x] += 1 }
  max = hash.values.max
  count += hash.values.sum { |v| v == max ? max : 0 }
  count
end

p max_frequency_elements([1,2,2,3,1,4])
p max_frequency_elements([1,2,3,4,5])
