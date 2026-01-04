class Node {
    int data;
    Node next;

    Node(int d) {
        data = d;
        next = null;
    }
}

public class LinkedListImpl {
    Node head;

    public void insert(int value) {
        Node newNode = new Node(value);

        if (head == null) {
            head = newNode;
            return;
        }

        Node temp = head;
        while (temp.next != null)
            temp = temp.next;

        temp.next = newNode;
    }

    public void delete(int value) {
        Node temp = head;
        Node prev = null;

        if (temp != null && temp.data == value) {
            head = temp.next;
            return;
        }

        while (temp != null && temp.data != value) {
            prev = temp;
            temp = temp.next;
        }

        if (temp == null)
            return;

        prev.next = temp.next;
    }

    public void update(int index, int value) {
        int count = 0;
        Node temp = head;

        while (temp != null) {
            if (count == index) {
                temp.data = value;
                return;
            }
            count++;
            temp = temp.next;
        }
    }

    public void traverse() {
        Node temp = head;

        while (temp != null) {
            System.out.print(temp.data + " ");
            temp = temp.next;
        }

        System.out.println();
    }

    public static void main(String[] args) {
        LinkedListImpl list = new LinkedListImpl();

        list.insert(10);
        list.insert(20);
        list.insert(30);

        list.traverse();

        list.update(1, 25);
        list.traverse();

        list.delete(25);
        list.traverse();
    }
}
