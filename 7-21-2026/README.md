# Python - MiniStack

Implement a stack that supports push, pop, top, and get_min — all in O(1) time, including retrieving the minimum.

```python
class MinStack:
    def __init__(self): ...
    def push(self, x: int) -> None: ...
    def pop(self) -> None: ...
    def top(self) -> int: ...
    def get_min(self) -> int: ...
```

### Constraints

Every operation must run in O(1) time, including get_min().
No calling min() (or sorting/scanning the stack) inside get_min() — it must be a direct lookup.
Plain Python list for storage, plus at most one extra list/stack for bookkeeping.
Assume pop(), top(), get_min() are never called on an empty stack.

### Example

```python
s = MinStack()
s.push(5); s.push(3); s.push(7)
s.get_min()   # -> 3
s.pop()       # removes 7
s.top()       # -> 3
s.get_min()   # -> 3
s.push(2)
s.get_min()   # -> 2
s.pop()       # removes 2
s.get_min()   # -> 3
```

### Bonus

make it memory-lighter by storing only the delta between each pushed value and the running min, so the auxiliary stack only grows on a new minimum.

---

### Notes

1. I originally used `.insert(0,x)` to try to keep the newest items at the start of the list (like an actual stack), but `insert()` is O(n) which breaks the contraints of O(1)
2. I really struggled with the implementation of `get_min()`, I originally did kept the min stack to be max 2 items, which means I would loose everything if BOTH elements were popped from the list. So I moved to a infinite list that just appends when the input is smaller than the last element of the min stack
3. forgot that you can access python lists with `list[-1]`
