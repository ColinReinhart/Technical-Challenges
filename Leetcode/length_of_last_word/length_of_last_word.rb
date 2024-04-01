# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  s.split(" ")[-1].split('').length
end

p length_of_last_word("Hello World") # 5
p length_of_last_word("   fly me   to   the moon  ") # 4
p length_of_last_word("luffy is still joyboy") # 6
