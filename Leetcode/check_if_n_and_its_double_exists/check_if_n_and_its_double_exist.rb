require 'set'
# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  seen = Set.new

  arr.each do |num|
    return true if seen.include?(num * 2) || (num % 2 == 0 && seen.include?(num / 2))

    seen.add(num)
  end

  false
end

p check_if_exist([10,2,5,3]) #true
p check_if_exist([3,1,7,11]) #false
p check_if_exist([7,1,14,11]) #true
