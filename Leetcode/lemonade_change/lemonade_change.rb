# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  five_count = 0
  ten_count = 0

  bills.each do |bill|
    if bill == 5
      five_count += 1
    elsif bill == 10
      if five_count > 0
        five_count -= 1
        ten_count += 1
      else
        return false
      end
    elsif bill == 20
      if ten_count > 0 && five_count > 0
        ten_count -= 1
        five_count -= 1
      elsif five_count >= 3
        five_count -= 3
      else
        return false
      end
    end
  end

  true
end

# p lemonade_change([5,5,5,10,20]) #true
# p lemonade_change([5,5,10,10,20]) #false
p lemonade_change([5,5,10,20,5,5,5,5,5,5,5,5,5,10,5,5,20,5,20,5]) #true
