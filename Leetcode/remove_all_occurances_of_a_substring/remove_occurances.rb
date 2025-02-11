# @param {String} s
# @param {String} part
# @return {String}
def remove_occurrences(s, part)
  @s = s
  @left = 0
  @right = part.length - 1

  def find_and_remove_part(s, part)
    if s[@left..@right] == part
      @s.slice!(@left..@right)
      @left = 0
      @right = part.length - 1
    else
      @left += 1
      @right += 1
    end
    if @s.include?(part)
      find_and_remove_part(@s, part)
    else
      return @s
    end
  end

  if @s.include?(part)
    find_and_remove_part(@s, part)
  else
    return @s
  end

  return @s
end

p remove_occurrences("daabcbaabcbc", "abc") #"dab"
p remove_occurrences("axxxxyyyyb", "xy") #"ab"


  # until right >= s.length do
  #   if split[left..right].join == part
  #     require 'pry'; binding.pry
  #     answer << split[wip..(left - 1)]
  #     wip = right + 1
  #     left = right + 1
  #     right = left + part.length - 1
  #   else
  #     left += 1
  #     right += 1
  #   end
  # end
