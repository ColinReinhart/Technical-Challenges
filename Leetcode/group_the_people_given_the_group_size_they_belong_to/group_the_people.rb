# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  output = []
  hash = group_sizes.map.with_index { |s, i| [i, s]}.to_h
  grouped = hash.group_by { |k, v| v }
  grouped.map do |group|
    if group[0] == group[1].count
      group[1..-1].each do |pair|
        output << pair.to_h.keys
      end
    else
      x = group[0]
      group[1..-1].each do |pair|
        array = pair.to_h.keys.each_slice(x).to_a
        array.each do |arr|
          output << arr
        end
      end
    end
  end
  output
end

p group_the_people([3,3,3,3,3,1,3])
p group_the_people([2,1,3,3,3,2])
