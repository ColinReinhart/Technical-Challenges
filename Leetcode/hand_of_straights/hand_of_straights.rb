# @param {Integer[]} hand
# @param {Integer} group_size
# @return {Boolean}
def is_n_straight_hand(hand, group_size)
  return false if hand.size % group_size != 0

  count = Hash.new(0)
  hand.each { |card| count[card] += 1 }
  hand.sort.each do |card|
    next if count[card] == 0

    (0...group_size).each do |i|
      return false if count[card + i] == 0
      count[card + i] -= 1
    end
  end

  true
end

p is_n_straight_hand([1,2,3,6,2,3,4,7,8], 3)
p is_n_straight_hand([1,2,3,4,5], 4)
p is_n_straight_hand([8,10,12], 3)
p is_n_straight_hand([1,1,2,2,3,3], 2)
