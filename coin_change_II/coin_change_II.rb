# @param {Integer} amount
# @param {Integer[]} coins
# @return {Integer}
def change(amount, coins)
    sum = 0
    count = 0
    until sum == amount || sum > amount do
        coins.each do |coin|
            require 'pry'; binding.pry
            
        end
    end
end

p change(5, [1,2,5])
p change(3, [2])
p change(10, [10])