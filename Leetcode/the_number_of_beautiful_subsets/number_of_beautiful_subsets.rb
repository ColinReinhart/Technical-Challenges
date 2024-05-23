# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def beautiful_subsets(nums, k)
    @ans = 0
    @nums = nums
    @k = k
    backtracking
    @ans
end

def backtracking index = 0, included = Hash.new(0)
    # When reaching end of nums exit recursion.
    if index >= @nums.size
        return
    end

    while index < @nums.size
        # When we have numbers in our hash and there exist not number where @nums[index] minus or plus
        # would give us k, continue.
        # For example if @nums[index] = 4 and @k = 2..
        # 4 - 2 = 2(k), so we cannot have 2 in our hash or else it won't be beautiful.
        # 4 + 2 = 6, if we have 6 in our hash then it can't be beautiful because 6-4 = 2(k).
        if (included.size > 0) and ( (included[@nums[index] - @k] > 0) or (included[@nums[index] + @k] > 0) )

        else
            # do
            included[@nums[index]] += 1
            @ans += 1
            backtracking(index + 1, included)
            # undo
            included[@nums[index]] -= 1
        end

        index += 1
    end
end

# p beautiful_subsets([2,4,6], 2)
# p beautiful_subsets([1], 1)
p beautiful_subsets([4,2,5,9,10,3], 1)
