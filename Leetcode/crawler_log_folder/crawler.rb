# @param {String[]} logs
# @return {Integer}
def min_operations(logs)
  count = 0

  logs.each do |log|
    if log == "../" && count > 0
      count -= 1
    elsif log == "../" && count == 0 || log == "./"
      count += 0
    else
      count += 1
    end
  end

  count
end

p min_operations(["d1/","d2/","../","d21/","./"])
p min_operations(["d1/","d2/","./","d3/","../","d31/"])
p min_operations(["d1/","../","../","../"])
