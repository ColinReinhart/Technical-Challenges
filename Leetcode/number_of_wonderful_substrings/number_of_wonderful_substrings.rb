# @param {String} word
# @return {Integer}
def wonderful_substrings(word)
  split = word.split('')
  wonderfuls = 0
  left = 0
  right = 0
  count = 1
  until left == 0 && right == word.length do
    window = split[left..right]
    hash = Hash.new(0)
    window.each { |char| hash[char] += 1 }
    odds = hash.select { |k,v| v.odd? }
    if odds.count < 2
      wonderfuls += 1
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
  return wonderfuls
end

p wonderful_substrings("aba")
p wonderful_substrings("aabb")
p wonderful_substrings("he")
p wonderful_substrings("ehaehcjjaafjdceac") #29
