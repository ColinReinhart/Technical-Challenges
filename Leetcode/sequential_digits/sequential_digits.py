def sequential_digits(low, high):
    result = []
    max_length = len(str(high))

    for length in range(1, max_length + 1):
        for start in range(1, 10 - length + 1):
            num = start
            for _ in range(length - 1):
                num = num * 10 + (num % 10 + 1)
            if low <= num <= high:
                result.append(num)

    return sorted(result)

print(sequential_digits(100, 300))
print(sequential_digits(1000, 13000))
