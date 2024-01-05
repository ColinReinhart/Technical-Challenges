# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  biggest = 0
  arr = []
  nums.each do |n|
    if arr == []
      arr << n
    elsif n > arr[-1]
      arr << n
    else n < arr[-1]
      if arr.count > biggest
        biggest = arr.count
        arr = []
      else
        arr =[]
      end
    end
  end
  return biggest
end

p length_of_lis([10,9,2,5,3,7,101,18])
# p length_of_lis([0,1,0,3,2,3])
# p length_of_lis([7,7,7,7,7,7,7])
