class MiniStack:
    def __init__(self):
        self.min: list[int] = []
        self.stack: list[int] = []

    def push(self, x: int) -> None:
        self.stack.append(x)

        if not self.min or x <= self.min[-1]:
            self.min.append(x)

    def pop(self) -> None:
        removed: int = self.stack.pop()
        if removed == self.min[-1]:
            self.min.pop()

    def top(self) -> int:
        return self.stack[-1]

    def get_min(self) -> int:
        return self.min[-1]

    def print(self) -> None:
        print("MiniStack")
        print("-" * 20)
        print(f"Stack: {list(reversed(self.stack))}")
        print(f"Min Stack: {list(reversed(self.min))}")
        print(f"Min Item: {self.get_min()}")
        print("-" * 20)
