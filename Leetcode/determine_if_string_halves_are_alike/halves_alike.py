def halves_are_alike(s):
    half = len(s) // 2
    return len([char for char in s[:half] if char.lower() in 'aeiou']) == len([char for char in s[half:] if char.lower() in 'aeiou'])

print(halves_are_alike("book") == True)
print(halves_are_alike("textbook") == False)