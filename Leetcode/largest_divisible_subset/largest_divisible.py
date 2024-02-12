class Solution(object):
    def largestDivisibleSubset(self, nums):
        if not nums:
            return []

        nums.sort()

        n = len(nums)
        dp = [1] * n
        prev_indices = [-1] * n

        max_length = 1
        max_index = 0

        for i in range(1, n):
            for j in range(i):
                if nums[i] % nums[j] == 0 and dp[i] < dp[j] + 1:
                    dp[i] = dp[j] + 1
                    prev_indices[i] = j
                    if dp[i] > max_length:
                        max_length = dp[i]
                        max_index = i

        result = []
        while max_index != -1:
            result.insert(0, nums[max_index])
            max_index = prev_indices[max_index]

        return result