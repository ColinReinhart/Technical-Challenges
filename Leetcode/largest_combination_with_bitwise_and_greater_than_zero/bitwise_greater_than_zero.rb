# @param {Integer[]} candidates
# @return {Integer}
def largest_combination(candidates)
  bit_count = Array.new(24, 0)

  candidates.each do |num|
    bit_position = 0
    while num > 0
      bit_count[bit_position] += 1 if (num & 1) == 1
      num >>= 1
      bit_position += 1
    end
  end

  bit_count.max
end

p largest_combination([16,17,71,62,12,24,14]) #4
p largest_combination([8,8]) #2
