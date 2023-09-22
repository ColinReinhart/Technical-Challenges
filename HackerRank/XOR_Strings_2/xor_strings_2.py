def strings_xor(s, t):
    result = []

    for i in range(len(s)):
        result.append(str(int(s[i]) ^ int(t[i])))

    return ''.join(result)


# Read input
# n = int(input())
s = input()
t = input()

# Call the function and print the result
result = strings_xor(s, t)
print(result)
