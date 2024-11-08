# @param {Integer[]} nums
# @param {Integer} maximum_bit
# @return {Integer[]}
def get_maximum_xor(nums, maximum_bit)
  max_val = (1 << maximum_bit) - 1
  xor_total = nums.reduce(0) { |acc, num| acc ^ num }
  result = []

  nums.reverse_each do |num|
    result << (max_val ^ xor_total)
    xor_total ^= num
  end

  result
end

p get_maximum_xor([0,1,1,3], 2) #[0,3,2,3]
p get_maximum_xor([2,3,4,7], 3) #[5,2,6,5]
