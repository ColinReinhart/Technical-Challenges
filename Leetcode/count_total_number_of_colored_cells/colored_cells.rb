# @param {Integer} n
# @return {Integer}
def colored_cells(n)
  2 * (n*n) - 2*n + 1
end

p colored_cells(1) #1
p colored_cells(2) #5
p colored_cells(3) #13
p colored_cells(4) #25
