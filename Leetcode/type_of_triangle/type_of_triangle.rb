# @param {Integer[]} nums
# @return {String}
def triangle_type(nums)
  nums.sort!
  return "none" if nums[0] + nums[1] <= nums[2]

  sides = Hash.new(0)
  nums.each { |side| sides[side] += 1 }

  if sides.count == 1
    return "equilateral"
  elsif sides.count == 2
    return "isosceles"
  elsif sides.count == 3
    return "scalene"
  else
    return "none"
  end

end

p triangle_type([3,3,3]) #"equilateral"
p triangle_type([3,4,5]) #"scalene"
p triangle_type([8,4,2]) #"none"
