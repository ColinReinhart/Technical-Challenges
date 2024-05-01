# @param {String} word
# @return {Integer}
def wonderful_substrings(word)
  split = word.split('')
  wonderfuls = []
  left = 0
  right = 0
  count = 1
  until left == 0 && right == word.length do
    window = split[left..right]
    hash = Hash.new(0)
    window.each { |char| hash[char] += 1 }
    ones = hash.select { |k,v| v == 1 }
    if ones.count < 2
      wonderfuls << window.join('')
    else
    end
    if right < word.length - 1
      right += 1
      left += 1
    else
      left = 0
      right = count
      count += 1
    end
  end
  return wonderfuls.count
end

p wonderful_substrings("aba")
p wonderful_substrings("aabb")
p wonderful_substrings("he")
