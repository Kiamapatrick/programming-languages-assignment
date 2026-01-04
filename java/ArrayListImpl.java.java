public class ArrayListImpl {
    private int[] data;
    private int size;

    public ArrayListImpl(int capacity) {
        data = new int[capacity];
        size = 0;
    }

    public void insert(int value) {
        if (size < data.length) {
            data[size] = value;
            size++;
        }
    }

    public void delete(int value) {
        for (int i = 0; i < size; i++) {
            if (data[i] == value) {
                for (int j = i; j < size - 1; j++) {
                    data[j] = data[j + 1];
                }
                size--;
                return;
            }
        }
    }

    public void update(int index, int value) {
        if (index >= 0 && index < size) {
            data[index] = value;
        }
    }

    public void traverse() {
        for (int i = 0; i < size; i++) {
            System.out.print(data[i] + " ");
        }
        System.out.println();
    }

    public static void main(String[] args) {
        ArrayListImpl list = new ArrayListImpl(10);

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
