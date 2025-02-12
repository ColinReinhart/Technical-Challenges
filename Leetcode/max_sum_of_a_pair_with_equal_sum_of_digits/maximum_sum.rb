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
  filtered_hash.each do |int, indx|
    indx.each_with_index do |x, i|
      # Ensure indx[i+1] exists before accessing it
      if i + 1 < indx.length
        pair_sums << nums[x] + nums[indx[i + 1]]
      end
    end
  end

  #Return the highest number in the pair sums array
  pair_sums.max
end

# p maximum_sum([18,43,36,13,7]) #54
# p maximum_sum([10,12,19,14]) #-1
p maximum_sum([368,369,307,304,384,138,90,279,35,396,114,328,251,364,300,191,438,467,183]) #835
