# @param {Integer} n
# @param {Integer[][]} rectangles
# @return {Boolean}
def check_valid_cuts(n, rectangles)
  x_intervals = rectangles.map { |x1, _, x2, _| [x1, x2] }
  y_intervals = rectangles.map { |_, y1, _, y2| [y1, y2] }

  x_starts = x_intervals.map(&:first).uniq.sort
  x_ends   = x_intervals.map(&:last).uniq.sort
  y_starts = y_intervals.map(&:first).uniq.sort
  y_ends   = y_intervals.map(&:last).uniq.sort

  # Check vertical cuts
  (0...x_ends.length).each do |i|
    cut1 = x_ends[i]
    (i + 1...x_starts.length).each do |j|
      cut2 = x_starts[j]

      # Define 3 vertical zones
      left = rectangles.select { |x1, _, x2, _| x2 <= cut1 }
      middle = rectangles.select { |x1, _, x2, _| x1 >= cut1 && x2 <= cut2 }
      right = rectangles.select { |x1, _, x2, _| x1 >= cut2 }

      all_non_empty = [left, middle, right].all?(&:any?)
      no_overlap = (left + middle + right).uniq.length == rectangles.length

      return true if all_non_empty && no_overlap
    end
  end

  # Check horizontal cuts
  (0...y_ends.length).each do |i|
    cut1 = y_ends[i]
    (i + 1...y_starts.length).each do |j|
      cut2 = y_starts[j]

      # Define 3 horizontal zones
      bottom = rectangles.select { |_, y1, _, y2| y2 <= cut1 }
      middle = rectangles.select { |_, y1, _, y2| y1 >= cut1 && y2 <= cut2 }
      top = rectangles.select { |_, y1, _, y2| y1 >= cut2 }

      all_non_empty = [bottom, middle, top].all?(&:any?)
      no_overlap = (bottom + middle + top).uniq.length == rectangles.length

      return true if all_non_empty && no_overlap
    end
  end

  false
end

p check_valid_cuts(5, [[1,0,5,2],[0,2,2,4],[3,2,5,3],[0,4,4,5]]) #true
p check_valid_cuts(4, [[0,0,1,1],[2,0,3,4],[0,2,2,3],[3,0,4,3]]) #true
p check_valid_cuts(4, [[0,2,2,4],[1,0,3,2],[2,2,3,4],[3,0,4,2],[3,2,4,4]]) #false
