# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  hash = Hash.new(0)
  nums.each { |x| hash[x] += 1 }
  hash.map{ |k,v| v==1 ? k : nil }.compact
end

p single_number([1,2,1,3,2,5])
p single_number([-1,0])
