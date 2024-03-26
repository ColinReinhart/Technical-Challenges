# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  require 'pry'; binding.pry
end

p first_missing_positive([1,2,0]) # 3
p first_missing_positive([3,4,-1,1]) # 2
p first_missing_positive([7,8,9,11,12]) # 1
