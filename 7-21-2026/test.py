from MiniStack import MiniStack

s = MiniStack()

s.push(5)
s.push(6)
s.push(10)

s.print()

s.pop()

print(s.top())

s.push(-1)

s.print()

s.pop()


s.push(5)

s.pop()

s.print()

s.push(67)
s.push(5)
s.push(5)

s.print()
