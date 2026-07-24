# C - FIFO Queue via Singly Linked List

Implement a FIFO queue backed by a singly linked list, with O(1) enqueue and O(1) dequeue by tracking both a front and a rear pointer.

```C
typedef struct Node {
    int data;
    struct Node *next;
} Node;

typedef struct Queue {
    Node *front;
    Node *rear;
} Queue;

void initQueue(Queue *q);
void enqueue(Queue *q, int value);
int  dequeue(Queue *q);   // removes and returns the front value
int  isEmpty(Queue *q);
```

### Constraints

enqueue and dequeue must both be O(1) — maintain rear so you never walk the list to append.
Pure linked list only — no arrays, no fixed-size buffer.
Allocate each node with malloc; free a node inside dequeue after copying out its value.
Assume dequeue() is only ever called when isEmpty() is false — no error codes needed.

### Example

```C
Queue q; initQueue(&q);
enqueue(&q, 10);
enqueue(&q, 20);
enqueue(&q, 30);
dequeue(&q);       // -> 10
enqueue(&q, 40);
dequeue(&q);       // -> 20
dequeue(&q);       // -> 30
dequeue(&q);       // -> 40
isEmpty(&q);        // -> true (1)
```

### Bonus

Add void freeQueue(Queue *q) that frees every remaining node, then rebuild and drain the queue under valgrind (or -fsanitize=address) to confirm zero leaks.

---

### Notes

1. I seems to have forgotten that when passing in pointers as the parameter (`initQueue`), it is already iniialized on the heap and I do not need to malloc it again. So I made this fatal mistake and started at the valgrind error for 20 minutes wondering what I did wrong, thinking the issue came from my initialization of the `front` and `rear` pointers.
2. I have successfully encountered a dangling pointer in `dequeue`, so when I freed `q->front`, I never thought about the case about what if the node is the only element, which would make `q->rear` a dangling pointer since it is now pointing at an already freed memory.
