class Solution(object):
    def majorityElement(self, nums):
        counts = {}
        for num in nums:
            counts[num] = counts.get(num, 0) + 1
        max_key = max(counts, key=counts.get)
        return max_key
        