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
