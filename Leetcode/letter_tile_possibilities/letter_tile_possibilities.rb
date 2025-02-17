# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
  count = Hash.new(0)
  tiles.chars.each { |char| count[char] += 1 }

  def backtrack(count)
    sum = 0

    count.each do |char, freq|
      next if freq == 0
      count[char] -= 1
      sum += 1 + backtrack(count)
      count[char] += 1
    end

    sum
  end

  backtrack(count)
end

p num_tile_possibilities("AAB") #8
p num_tile_possibilities("AAABBC") #188
p num_tile_possibilities("V") #1
