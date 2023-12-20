f = open("data.text", "r").read().strip()
g = f.split(",")

big_sum = 0
for string in g:
    print(string)
    num = 0 
    for char in string:
        ascci_code = ord(char)
        num += ascci_code
        num = num * 17
        num = num % 256
    big_sum += num
print(big_sum)


