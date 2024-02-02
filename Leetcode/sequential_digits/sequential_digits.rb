# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
def sequential_digits(low, high)
  list = []
  array = (low..high).to_a
  temp = []
  array.each do |num|
    split = num.to_s.split('')
    split_i = split.map { |x| x.to_i }
    split_i.each_with_index do |n, i|
      if i == split.count - 1
        if n.to_i == temp[-1] + 1
          temp << n.to_i
          list << temp.join.to_i
          temp = []
        elsif n.to_i != temp[-1] + 1
          temp = []
          break
        end
      elsif temp == []
        temp << n.to_i
      elsif n.to_i == temp[-1] + 1
        temp << n.to_i
      else n.to_i != temp[-1] + 1
        temp = []
        break
      end
    end
  end
  return list
end


p sequential_digits(100, 300)
p sequential_digits(1000, 13000)
