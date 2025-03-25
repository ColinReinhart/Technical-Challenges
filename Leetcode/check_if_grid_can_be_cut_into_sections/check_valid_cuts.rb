# @param {Integer} n
# @param {Integer[][]} rectangles
# @return {Boolean}
def check_valid_cuts(n, rectangles)
  require 'pry'; binding.pry
end

p check_valid_cuts(5, [[1,0,5,2],[0,2,2,4],[3,2,5,3],[0,4,4,5]]) #true
# p check_valid_cuts(4, [[0,0,1,1],[2,0,3,4],[0,2,2,3],[3,0,4,3]]) #true
# p check_valid_cuts(4, [[0,2,2,4],[1,0,3,2],[2,2,3,4],[3,0,4,2],[3,2,4,4]]) #false
