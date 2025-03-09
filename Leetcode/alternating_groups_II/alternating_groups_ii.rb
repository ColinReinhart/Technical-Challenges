# @param {Integer[]} colors
# @param {Integer} k
# @return {Integer}
def number_of_alternating_groups(colors, k)
  require 'pry'; binding.pry
end

p number_of_alternating_groups([0,1,0,1,0], 3) #3
p number_of_alternating_groups([0,1,0,0,1,0,1], 6) #2
p number_of_alternating_groups([1,1,0,1], 4) #0
