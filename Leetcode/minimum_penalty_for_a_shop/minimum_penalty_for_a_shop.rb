# @param {String} customers
# @return {Integer}
def best_closing_time(customers)
  prev = 0
  if customers.include?("N")
    customers.split("").each_with_index do |c, i|
      if c == "N"
        return prev
      else
        prev += 1
      end
    end
  else
    return customers.size
  end
end

p best_closing_time("YYNY") == 2
p best_closing_time("NNNN") == 0
p best_closing_time("YYYY") == 4
p best_closing_time("YNYY") == 4
