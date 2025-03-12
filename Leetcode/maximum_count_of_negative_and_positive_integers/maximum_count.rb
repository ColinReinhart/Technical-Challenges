# @param {Integer[]} nums
# @return {Integer}
def maximum_count(nums)
  neg = 0
  pos = 0

  nums.each do |num|
    if num > 0
      pos += 1
    elsif num < 0
      neg += 1
    end
  end

  return [neg, pos].max
end

p maximum_count([-2,-1,-1,1,2,3]) #3
p maximum_count([-3,-2,-1,0,0,1,2]) #3
p maximum_count([5,20,66,1314]) #4
