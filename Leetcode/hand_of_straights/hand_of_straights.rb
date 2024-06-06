# @param {Integer[]} hand
# @param {Integer} group_size
# @return {Boolean}
def is_n_straight_hand(hand, group_size)
  @arr = []
  if  hand.count % group_size != 0
    return false
  end
  hash = Hash.new(0)
  hand.sort.each { |x| hash[x] += 1 }

  def find_straight(h, s)
    temp = []
    wip = h.to_a
    wip[0..s-1].each do |k, v|
      temp << k
      h[k] -= 1
      if h[k] == 0
        h.delete(k)
      end
    end
    @arr << temp
    # require 'pry'; binding.pry
    if h != {}
      find_straight(h, s)
    end
  end

  if hash != {}
    find_straight(hash, group_size)
  end

  def is_consecutive?
    self.each do |arr|
      arr.each_with_index do |c,i|
        if i == 0
          break
        elsif arr[-1] - c == -1
          break
        else
          return false
        end
        return true
      end
    end
  end

  if @arr.is_consecutive?
    return true
  else
    return false
  end
end

p is_n_straight_hand([1,2,3,6,2,3,4,7,8], 3)
p is_n_straight_hand([1,2,3,4,5], 4)
















# until hash == {}
  # temp =[]
  #   hash.each do |k,v|
  #     if temp.count < group_size
  #       temp << k
  #       hash[k] -= 1
  #     elsif temp.count == group_size
  #       arr << temp
  #       temp = [k]
  #       hash[k] -= 1
  #       if hash[k] == 0
  #         hash.delete(k)
  #       end
  #       require 'pry'; binding.pry
  #     else
  #      require 'pry'; binding.pry
  #     end
  #   end
  # end
