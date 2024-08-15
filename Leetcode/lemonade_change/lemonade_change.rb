# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  till = []
  bills.each do |bill|
    if bill == 5
      till << bill
    elsif bill == 10
      if till.include?(5)
        till << bill
        till.delete_at(till.index(5))
      else
        return false
      end
    elsif bill == 20
      if till.include?(10)
        if till.include?(5)
          till << bill
          till.delete_at(till.index(5))
          till.delete_at(till.index(10))
        else
          return false
        end
      elsif till.count(5) >= 3
        till << bill
        3.times { till.delete_at(till.index(5)) }
      else
        return false
      end
    end
  end
  return true
end

# p lemonade_change([5,5,5,10,20]) #true
# p lemonade_change([5,5,10,10,20]) #false
p lemonade_change([5,5,10,20,5,5,5,5,5,5,5,5,5,10,5,5,20,5,20,5]) #true
