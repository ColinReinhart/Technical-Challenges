# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
  pieces = ratings.count
  ratings.each_with_index do |c, i|
    if i == 0
      if c > ratings[i+1]
         pieces += 1
      end
    elsif i == ratings.count-1
      if c > ratings[i-1]
        pieces += 1
      end
    else
      if c > ratings[i+1] && c < ratings[i-1]
        pieces += 2
      elsif c > ratings[i+1] || c > ratings[i-1]
        pieces += 1
      end
    end
  end
  pieces
end

# p candy([1, 0, 2])
# p candy([1, 2, 2])
# p candy([1,3,2,2,1])
p candy([1,2,87,87,87,2,1])
