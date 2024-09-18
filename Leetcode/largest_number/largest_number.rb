# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  nums = nums.map(&:to_s)

  nums.sort! { |a, b| (b + a) <=> (a + b) }

  result = nums.join

  result[0] == '0' ? '0' : result
end

p largest_number([10,2]) #"210"
p largest_number([3,30,34,5,9,109]) #"9534330"
