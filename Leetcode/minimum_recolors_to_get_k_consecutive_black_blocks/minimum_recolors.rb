# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
  split = blocks.split('')
  left = 0
  right = k - 1
  whites = split.length


  until right == split.length
    hash = Hash.new(0)
    split[left..right].each { |x| hash[x] += 1 }
    if hash["W"] < whites
      whites = hash["W"]
    end
    left += 1
    right += 1
  end

  whites
end

p minimum_recolors("WBBWWBBWBW", 7) #3
p minimum_recolors("WBWBBBW", 2) #0
