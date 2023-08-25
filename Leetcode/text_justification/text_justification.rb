# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
def full_justify(words, max_width)
  output = []
  x = 0
  line = words.join(" ")[x...(x+max_width)]
  until words.count <= 0 do
    if line.include?(" ") && line[-1] == (" ")
      output << line
      x += line.size
      words = words.join(" ")[line.size..-1].split(" ")
      line = words.join(" ")[0...max_width]
    elsif line.include?(" ") && line[-1] != (" ")
      line = line[0...-1]
    else
      output << line
        output.map.with_index do |line, i|
          until line.size == max_width do
            if line.include?(" ") && line.size < max_width
              split = line.split("")
              split.map.with_index do |char, indx|
                if char == " " && split.size < max_width
                  split.insert(indx, " ")
                  line = split.join("")
                elsif char == " " && split.size == max_width
                  line = split.join("")
                  output[i] = line
                else
                end
              end
            elsif line.include?(" ") && line.size == max_width
              require 'pry'; binding.pry
            else
              wip = max_width - line.size
              wip.times do
                line = line + " "
              end
              output[i] = line
            end
          end
        end
        return output
    end
  end
end


p full_justify(["This", "is", "an", "example", "of", "text", "justification."], 16)
p full_justify(["What","must","be","acknowledgment","shall","be"], 16)
p full_justify(["Science","is","what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"], 20)
