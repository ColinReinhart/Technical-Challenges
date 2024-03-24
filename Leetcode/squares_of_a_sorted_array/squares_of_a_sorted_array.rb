# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  nums.map { |num| num ** 2 }.sort
end

p sorted_squares([-4,-1,0,3,10]) == [0,1,9,16,100]
p sorted_squares([-7,-3,2,3,11]) == [4,9,9,49,121]
