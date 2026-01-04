#include <stdio.h>

#define MAX 100

typedef struct {
    int data[MAX];
    int size;
} ArrayList;

void init(ArrayList *list) {
    list->size = 0;
}

void insert(ArrayList *list, int value) {
    if (list->size < MAX) {
        list->data[list->size] = value;
        list->size++;
    }
}

void deleteVal(ArrayList *list, int value) {
    int i, j;
    for (i = 0; i < list->size; i++) {
        if (list->data[i] == value) {
            for (j = i; j < list->size - 1; j++) {
                list->data[j] = list->data[j + 1];
            }
            list->size--;
            return;
        }
    }
}

void update(ArrayList *list, int index, int value) {
    if (index >= 0 && index < list->size) {
        list->data[index] = value;
    }
}

void traverse(ArrayList *list) {
    for (int i = 0; i < list->size; i++) {
        printf("%d ", list->data[i]);
    }
    printf("\n");
}

int main() {
    ArrayList list;

    init(&list);

    insert(&list, 10);
    insert(&list, 20);
    insert(&list, 30);

    traverse(&list);

    update(&list, 1, 25);
    traverse(&list);

    deleteVal(&list, 25);
    traverse(&list);

    return 0;
}
