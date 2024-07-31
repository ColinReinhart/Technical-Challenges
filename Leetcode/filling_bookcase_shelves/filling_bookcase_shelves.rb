# @param {Integer[][]} books
# @param {Integer} shelf_width
# @return {Integer}
def min_height_shelves(books, shelf_width)
  height = []
  books.each do |h,w|
    require 'pry'; binding.pry
  end
end

p min_height_shelves([[1,1],[2,3],[2,3],[1,1],[1,1],[1,1],[1,2]], 4)
# p min_height_shelves([[1,3],[2,4],[3,2]], 6)
