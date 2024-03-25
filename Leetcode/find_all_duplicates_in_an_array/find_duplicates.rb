# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.select { |k,v| v > 1 }.keys
end

p find_duplicates([4,3,2,7,8,2,3,1]) # [2,3]
p find_duplicates([1,1,2]) # [1]
p find_duplicates([1]) # []
