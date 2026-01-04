class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def insert(self, value):
        new_node = Node(value)
        if not self.head:
            self.head = new_node
            return
        temp = self.head
        while temp.next:
            temp = temp.next
        temp.next = new_node

    def delete(self, value):
        temp = self.head
        if temp and temp.data == value:
            self.head = temp.next
            return
        prev = None
        while temp and temp.data != value:
            prev = temp
            temp = temp.next
        if temp is None:
            return
        prev.next = temp.next

    def update(self, index, value):
        temp = self.head
        count = 0
        while temp:
            if count == index:
                temp.data = value
                return
            count += 1
            temp = temp.next

    def traverse(self):
        temp = self.head
        while temp:
            print(temp.data, end=" ")
            temp = temp.next
        print()


ll = LinkedList()

ll.insert(10)
ll.insert(20)
ll.insert(30)

ll.traverse()

ll.update(1, 25)
ll.traverse()

ll.delete(25)
ll.traverse()
