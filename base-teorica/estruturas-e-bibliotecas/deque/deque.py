from collections import deque

d = deque()

d.appendleft(10)
d.appendleft(20)
d.append(30)

while(len(d) > 0):
    print(d.pop())
