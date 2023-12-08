class Solution(object):
    def numberOfMatches(self, n):
        matches = 0
        while n > 1:
            if n % 2 == 0:
                matches += n // 2
                n //= 2
            else:
                matches += (n - 1) // 2
                n = (n - 1) // 2 + 1
        return matches

# Test cases
sol = Solution()
print(sol.numberOfMatches(7))  # Output: 6
print(sol.numberOfMatches(14))  # Output: 13