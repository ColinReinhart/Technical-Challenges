# @param {Integer[]} colors
# @param {Integer} k
# @return {Integer}
def number_of_alternating_groups(colors, k)
    (0..k - 2).each { colors << colors[_1] }
    j = 0
    (1..colors.size - 1).inject(0) do |cnt, i|
      colors[i] == colors[i - 1] ? (j = i and next cnt) : i - j + 1 == k ? (j += 1 and next cnt + 1) : cnt
    end
end

p number_of_alternating_groups([0,1,0,1,0], 3) #3
p number_of_alternating_groups([0,1,0,0,1,0,1], 6) #2
p number_of_alternating_groups([1,1,0,1], 4) #0
