menu = {
      'veggie sandwich' => 6.85,
      'extra veggies' => 2.20,
      'chicken sandwich' => 7.85,
      'extra chicken' => 3.20,
      'cheese' => 1.25,
      'chips' => 1.40,
      'nachos' => 3.45,
      'soda' => 2.05,
    }

    receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]


def take_two(menu,rcpt)
  item_count = 0
  item_name_count = {}
  rcpt.each do |r|
    until r == 0 do
      menu.each do |i, p|
        require "pry"; binding.pry
      end
    end
  end
end

take_two(menu, receipts)

def find_first_combo(menu, rcpts)
  item_count = 0
  answer = []
  rcpts.each do |r|
    menu.each do |item, price|
      if r == 0
        return "#{item_count} items, #{answer}"
      elsif price < r && r != 0
        item_count += 1
        answer << item
        r -= price
        r = r.round(2)
      else
      end
      require "pry"; binding.pry
    end
  end
end

find_first_combo(menu, receipts)



#Jim's Solution
def order(amount, menu_list)


  #take amount and eliminate anything that is greater than the given total
  #take highest priced item, then keep adding it till you are greater than receipt
  #find next highest priced item, add it to that and then keep going until you find a find a match
  #if there are no matches, recall the method but remove the menu with everything that doesn't work

  menu_list.each do |item|
    if item[1] > amount
      menu_list.delete(item[0])
    end
  end

  output_hash = {}
  subtotal = 0
  amount_remaining = amount

  menu_list.sort_by{|k,v| v}.reverse.each do |sorted_item|
    if sorted_item[1] <= amount_remaining
      qty = (amount_remaining / sorted_item[1]).to_i
      subtotal = (sorted_item[1] * qty)
      amount_remaining = (amount_remaining - subtotal).round(2)
      output_hash[sorted_item[0]] = qty
    end
    if amount_remaining == 0
      return output_hash
    end
  end

  menu_list.delete(output_hash.first[0])

  order(amount, menu_list)

end
