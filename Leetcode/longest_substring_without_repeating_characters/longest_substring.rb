# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  if s == ""
    return 0
  else
    split = s.split('')
    left = 0
    right = 0
    longest = split[left..right]

    until left == split.length - 1 && right == split.length - 1 do
      if split[left..right].uniq == split[left..right]
        split[left..right].length > longest.length ? longest = split[left..right] :
        if right < split.length - 1
          right += 1
        else
          left += 1
        end
      else
        split[left..right - 1].length > longest.length ? longest = split[left..right - 1] :
        left += 1
      end
    end
    longest.length
  end
end


p length_of_longest_substring("abcabcbb") == 3
p length_of_longest_substring("bbbbb") == 1
p length_of_longest_substring("bbbbb") == 1
p length_of_longest_substring("") == 0
p length_of_longest_substring(" ") == 1
p length_of_longest_substring("au") == 2
