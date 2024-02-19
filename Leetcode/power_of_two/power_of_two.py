def is_power_of_two(n):
    x = 0
    
    def recursion(n):
        nonlocal x 
        if 2 ** x < n:
            x += 1
            return recursion(n)
        elif 2 ** x == n:
            return True
        else:
            return False

    return recursion(n)


print(is_power_of_two(1))  
print(is_power_of_two(16))  
print(is_power_of_two(3))
