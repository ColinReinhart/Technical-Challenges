# @param {Integer} days
# @param {Integer[][]} meetings
# @return {Integer}
def count_days(days, meetings)
  require 'pry'; binding.pry
end

p count_days(10, [[5,7],[1,3],[9,10]]) #2
p count_days(5, [[2,4],[1,3]]) #1
p count_days(6, [[1,6]]) #0
