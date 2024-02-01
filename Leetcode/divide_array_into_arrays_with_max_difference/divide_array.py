class Solution(object):
    def divideArray(self, nums, k):
        if len(nums) % 3 != 0:
            return []

        output = []
        temp_arr = []

        for num in sorted(nums):
            if len(temp_arr) < 3:
                temp_arr.append(num)
            else:
                if temp_arr[2] - temp_arr[0] <= k:
                    output.append(temp_arr)
                    temp_arr = [num]
                else:
                    return []

        if temp_arr[2] - temp_arr[0] <= k:
            output.append(temp_arr)
            return output
        else:
            return []

solution_instance = Solution()
print(solution_instance.divideArray([1, 3, 4, 8, 7, 9, 3, 5, 1], 2))
print(solution_instance.divideArray([1, 3, 3, 2, 7, 3], 3))
