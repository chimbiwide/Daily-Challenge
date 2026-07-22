# C — Pointer Reversal Puzzle

Write a C function that reverses an array of integers in place, using ONLY pointer arithmetic — no array-subscript syntax (`arr[i]`) anywhere in your solution.

```C
    void reverse(int *arr, int n);
```

### CONSTRAINTS
- No `[]` indexing anywhere (not even for the bonus print).
- No extra array/buffer — O(1) extra scalar space only.
- No standard library reverse/sort helpers.

### EXAMPLE

```C
int arr[] = {1, 2, 3, 4, 5};
reverse(arr, 5);
// arr is now {5, 4, 3, 2, 1}
```

### BONUS
After reversing, print the array using a pointer-arithmetic loop only.

---

### Notes 

I did not know C array pointers auto-increments so I originally did `i+=sizeof(int)`
