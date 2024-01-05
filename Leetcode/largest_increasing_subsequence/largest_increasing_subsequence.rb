# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  sequences = []
  temp = []
  nums.each_with_index do |n, i|
    temp << n
    nums[i+1..-1].each do |num|
      if num > temp[-1]
        temp << num
      end
    end
    sequences << temp.count
    temp = []
  end
  return sequences.max
end

p length_of_lis([10,9,2,5,3,7,101,18])
p length_of_lis([0,1,0,3,2,3])
p length_of_lis([7,7,7,7,7,7,7])
