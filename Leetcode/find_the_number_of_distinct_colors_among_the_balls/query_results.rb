# @param {Integer} limit
# @param {Integer[][]} queries
# @return {Integer[]}
def query_results(limit, queries)
  results = []
  ball_to_color = {}
  color_count = Hash.new(0)
  distinct_colors = 0

  queries.each do |ball, color|
    if ball_to_color.key?(ball)
      old_color = ball_to_color[ball]
      color_count[old_color] -= 1
      distinct_colors -= 1 if color_count[old_color] == 0  # Remove empty colors
    end

    ball_to_color[ball] = color
    if color_count[color] == 0
      distinct_colors += 1
    end
    color_count[color] += 1

    results << distinct_colors
  end

  results
end

# p query_results(4, [[1,4],[2,5],[1,3],[3,4]]) #[1,2,2,3]
p query_results(4, [[0,1],[1,2],[2,2],[3,4],[4,5]]) #[1,2,2,3,4]
