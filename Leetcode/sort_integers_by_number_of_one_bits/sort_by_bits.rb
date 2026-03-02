
# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
    arr.sort_by { |num| [num.to_s(2).count("1"), num] }
end

p sort_by_bits([0,1,2,3,4,5,6,7,8]) == [0,1,2,4,8,3,5,6,7]
p sort_by_bits([1024,512,256,128,64,32,16,8,4,2,1]) == [1,2,4,8,16,32,64,128,256,512,1024]