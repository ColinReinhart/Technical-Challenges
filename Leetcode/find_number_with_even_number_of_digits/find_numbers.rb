# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  count = 0
  nums.each { |num| count += 1 if num.to_s.split('').length.even? }
  count
end

p find_numbers([12,345,2,6,7896]) #2
p find_numbers([555,901,482,1771]) #1
