# @param {String[]} nums
# @return {String}
def find_different_binary_string(nums)
  n = nums[0].length
  all = ["0", "1"].repeated_permutation(n).map(&:join)
  hash = Hash.new(0)
  nums.each { |num| hash[num] += 1 }
  all.each { |num| hash[num] += 1 }
  return hash.key(1)
end

p find_different_binary_string(["01","10"]) # "11" or "00"
p find_different_binary_string(["00","01"]) # "10" or "11"
p find_different_binary_string(["111","011","001"]) # "101", "000", "010", "100", or "110"
