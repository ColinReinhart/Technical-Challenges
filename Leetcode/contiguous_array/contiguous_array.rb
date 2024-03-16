# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
  nums.include?(0) && nums.include?(1) ? find_max_length_helper(nums) : 0
end

def find_max_length_helper(nums)
  hash = Hash.new(0)
  nums.each { |num| hash[num] += 1 }
  hash.values.min * 2
end

# p find_max_length([0, 1]) # 2
# p find_max_length([0, 1, 0]) # 2
p find_max_length([0,1,1,0,1,1,1,0]) # 4
