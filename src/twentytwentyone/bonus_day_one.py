f = open("../../resources/one.txt", "r")
data = list(map(int, f.read().splitlines())) # not very pythonic lol
f.close()

# Pythons recursionlimit is at 1000, so good luck writing recursive functions.
# This is apparently because Python does not optimize for tail recursion
# http://neopythonic.blogspot.com/2009/04/tail-recursion-elimination.html

import sys
sys.setrecursionlimit(10**6)

def taskone(l,cur_val):
    one,two,*rest = l
    is_greater = two > one
    if not rest:
        return (cur_val+1) if is_greater else cur_val
    next_list = [two,*rest]
    if is_greater:
        return taskone(next_list, cur_val + 1)
    return taskone(next_list, cur_val)

print(taskone(data,0))


def tasktwo(l,cur_val):
    one, two, three, four, *rest = l
    is_greater = (one+ two+ three) < (two + three + four)
    if not rest:
        return (cur_val+1) if is_greater else cur_val
    next_list = [two,three,four,*rest]
    if is_greater:
        return tasktwo(next_list, cur_val + 1)
    return tasktwo(next_list, cur_val)


print(tasktwo(data,0))
