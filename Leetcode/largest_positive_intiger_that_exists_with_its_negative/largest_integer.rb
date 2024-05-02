# @param {Integer[]} nums
# @return {Integer}
def find_max_k(nums)
  has_negative = []
  nums.each { |num| has_negative << num if nums.include?(num * -1) }
  has_negative.max || -1
end

p find_max_k([-1,2,-3,3])
p find_max_k([-1,10,6,7,-7,1])
p find_max_k([-10,8,6,7,-2,-3])
