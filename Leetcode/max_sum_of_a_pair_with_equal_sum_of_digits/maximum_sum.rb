# @param {Integer[]} nums
# @return {Integer}
def maximum_sum(nums)
  sums = [] #Create an empty array to store the sums of each digit in nums
  pair_sums = [-1] #Start with -1 to later return max, if no other digit sums match it will return -1
  hash = Hash.new { |h, k| h[k] = [] } #Create an empty hash where the key will be the sum and the values with be an array of their indicies

  #Itterate through the array nums to add digits together an put into sums array
  nums.each do |x|
    sums << x.to_s.split('').map { |x| x.to_i }.sum
  end

  #Put all sums into hash
  sums.each_with_index do |x,i|
    hash[x] << i
  end

  #Filter hash to only include Key Value pairs with 2 or more values
  filtered_hash = hash.select { |_, value| value.is_a?(Array) && value.size >= 2 }

  #Itterate through the filtered hash to sum the indicies of nums and put into the Pair Sums array
  filtered_hash.each do |int,indx|
    wip = []
    indx.each do |x|
      wip << nums[x]
    end
    pair_sums << wip.sum
  end

  #Return the highest number in the pair sums array
  pair_sums.max
end

p maximum_sum([18,43,36,13,7]) #54
p maximum_sum([10,12,19,14]) #-1
