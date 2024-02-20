def missing_number(nums)
  n = nums.length
  arr = (0..n).to_a
  arr.each { |num| return num if !nums.include?(num) }
end

p missing_number([3,0,1])
# p missing_number([0,1])
# p missing_number([9,6,4,2,3,5,7,0,1])
