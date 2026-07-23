# Java - Recursive Sierpinski Triangle (ASCII Art)

Write a recursive method that generates a Sierpinski triangle as ASCII art — a classic fractal built entirely from smaller copies of itself.

```java
public class Sierpinski {
public static void main(String[] args) {
int order = 3;
List<String> art = build(order);
for (String row : art) System.out.println(row);
}

    static List<String> build(int order) {
        // TODO:
        // base case: order == 0 -> single row: ["*"]
        // recursive case:
        //   prev = build(order - 1)
        //   pad  = " ".repeat(2^(order-1))
        //   top    = each line of prev, wrapped as: pad + line + pad
        //   bottom = each line of prev, doubled as: line + " " + line
        //   return top followed by bottom
        return null;
    }
}
```

### Constraints

- Must be implemented recursively — no iterative subdivision or hardcoded triangle shapes.
- No external libraries beyond java.util.List/ArrayList.
- Must work for order 0 through at least 5 without stack issues.
- Output width/height should be exactly 2^order columns/rows (rows may have trailing spaces).

### Example

order = 2 →
*
* *
*   *
* * * *

### Bonus

Let the user pass order as a command-line arg (or Scanner input), and swap '*' for a different character based on recursion depth to give each "level" of the fractal a distinct look.