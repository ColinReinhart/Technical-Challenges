# @param {String[]} nums
# @return {String}
# @param {String[]} nums
# @return {String}
def find_different_binary_string(nums)
  nums.each_with_index.map { |num, i| num[i] == "0" ? "1" : "0" }.join
end

p find_different_binary_string(["01","10"]) # "11" or "00"
p find_different_binary_string(["00","01"]) # "10" or "11"
p find_different_binary_string(["111","011","001"]) # "101", "000", "010", "100", or "110"
