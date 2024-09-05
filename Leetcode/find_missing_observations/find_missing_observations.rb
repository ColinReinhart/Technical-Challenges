# @param {Integer[]} rolls
# @param {Integer} mean
# @param {Integer} n
# @return {Integer[]}
def missing_rolls(rolls, mean, n)
    require 'pry'; binding.pry
end

p missing_rolls([3,2,4,3], 4, 2) #[6,6]
p missing_rolls([1,5,6], 3, 4) #[2,3,2,2]
p missing_rolls([1,2,3,4], 6, 4) #[]
