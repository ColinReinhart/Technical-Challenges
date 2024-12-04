# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)

  arr.each do |num|
    if num != 0 && arr.include?(num * 2)
      return true
    end
  end

  false
end

p check_if_exist([10,2,5,3]) #true
p check_if_exist([3,1,7,11]) #false
