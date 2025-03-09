# @param {Integer[]} colors
# @param {Integer} k
# @return {Integer}
def number_of_alternating_groups(colors, k)
  n = colors.length
  extended_colors = colors + colors[0...(k - 1)]
  count = 0

  (0...(n)).each do |i|
    group = extended_colors[i...(i + k)]
    is_alternating = true

    (1...(k - 1)).each do |j|
      if group[j] == group[j - 1] || group[j] == group[j + 1]
        is_alternating = false
        break
      end
    end

    count += 1 if is_alternating
  end

  count
end

p number_of_alternating_groups([0,1,0,1,0], 3) #3
p number_of_alternating_groups([0,1,0,0,1,0,1], 6) #2
p number_of_alternating_groups([1,1,0,1], 4) #0
