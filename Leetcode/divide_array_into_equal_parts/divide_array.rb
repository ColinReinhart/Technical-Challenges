# @param {Integer[]} nums
# @return {Boolean}
def divide_array(nums)
  answer = true
  hash = Hash.new(0)
  nums.each { |num| hash[num] += 1 }

  hash.values.each do |num|
    if num.odd?
      answer = false
    end
  end

  answer
end

p divide_array([3,2,3,2,2,2]) #true
p divide_array([1,2,3,4]) #false
