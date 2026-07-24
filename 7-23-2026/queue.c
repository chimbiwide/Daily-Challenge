#include <stdio.h>
#include <stdlib.h>

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
int dequeue(Queue *q);
int isEmpty(Queue *q);
void printQueue(Queue *q);
void freeQueue(Queue *q);

int main(void) {
    Queue q;
    initQueue(&q);
    enqueue(&q, 10);
    enqueue(&q, 20);
    enqueue(&q, 30);
    enqueue(&q, 60);
    enqueue(&q, 80);
    enqueue(&q, 90);
    enqueue(&q, 70);
    printQueue(&q);
    printf("%d\n", dequeue(&q));
    enqueue(&q, 40);
    printf("%d\n", dequeue(&q));
    printf("%d\n", dequeue(&q));
    printf("%d\n", dequeue(&q));
    printf("%d\n", isEmpty(&q));
    freeQueue(&q);
}

void initQueue(Queue *q) {
    q->front = NULL;
    q->rear = NULL;
}

void enqueue(Queue *q, int value) {
    Node *node = malloc(sizeof(Node));
    node->data = value;
    node->next = NULL;
    if (q->front == NULL && q->rear == NULL) {
        q->front = node;
        q->rear = node;
    } else {
        q->rear->next = node;
        q->rear = node;
    }
}

int dequeue(Queue *q) {
    if (q->front == NULL) {
        fprintf(stderr, "Canno perform dequeue on an empty queue");
        return -1;
    }
    int value = q->front->data;
    Node *next = q->front->next;
    free(q->front);
    q->front = next;
    if (q->front == NULL) q->rear = NULL;
    return value;
}

int isEmpty(Queue *q) {
    int status = 0;
    if (q->front == NULL && q->rear == NULL)  status = 1;
    return status;
}

void printQueue(Queue *q) {
    if (q->front == NULL && q->rear == NULL) {
        fprintf(stderr, "Cannot print an empty queue");
        return;
    }
    Node *current = q->front;
    while (current->next != NULL) {
        Node *next = current->next;
        printf("[ %d ] -> ", current->data);
        current = next;
    }
    printf("[ %d ]", q->rear->data);
    printf("\n");
}

void freeQueue(Queue *q) {
    Node *current = q->front;
    while (current != NULL) {
        Node *next = current->next;
        free(current);
        current = next;
    }
}
