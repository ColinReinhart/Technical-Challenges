class ProductOfNumbers
  def initialize()
    @prefix_products = [1]  # Prefix product list (1 is neutral for multiplication)
  end

  def add(num)
    if num == 0
      @prefix_products = [1]  # Reset the product list on zero
    else
      @prefix_products << @prefix_products[-1] * num
    end
  end

  def get_product(k)
    return 0 if k >= @prefix_products.length  # If k exceeds stored values, zero was in the list

    @prefix_products[-1] / @prefix_products[-k-1]  # Get the product efficiently
  end
end

# ✅ Example Usage:
productOfNumbers = ProductOfNumbers.new()
productOfNumbers.add(3)   # [3]
productOfNumbers.add(0)   # [3, 0] (resets prefix)
productOfNumbers.add(2)   # [2]
productOfNumbers.add(5)   # [2, 5]
productOfNumbers.add(4)   # [2, 5, 4]

puts productOfNumbers.get_product(2)  # 20 (5 * 4)
puts productOfNumbers.get_product(3)  # 40 (2 * 5 * 4)
puts productOfNumbers.get_product(4)  # 0  (Reset by previous 0)

productOfNumbers.add(8)   # [2, 5, 4, 8]
puts productOfNumbers.get_product(2)  # 32 (4 * 8)
