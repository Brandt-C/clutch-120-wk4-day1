# Remove vowels

# Write a function that will remove all vowels from a given string. The function should return a string.
# Examples:						
# Input: ‘Joel’
# Output: ‘Jl’					
# Input: ‘Shoha’
# Output: ‘Shh’


def vow(st):
    ans = ''
    vowels = {'a', 'e', 'i', 'o', 'u'}
    for s in st:
        if s not in vowels:
            ans += s
    return ans

print(vow('Brandt'))