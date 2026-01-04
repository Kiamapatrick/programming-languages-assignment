class ArrayList:
    def __init__(self):
        self.data = []

    def insert(self, value):
        self.data.append(value)

    def delete(self, value):
        if value in self.data:
            self.data.remove(value)

    def update(self, index, value):
        if 0 <= index < len(self.data):
            self.data[index] = value

    def traverse(self):
        print(*self.data)


arr = ArrayList()

arr.insert(10)
arr.insert(20)
arr.insert(30)

arr.traverse()

arr.update(1, 25)
arr.traverse()

arr.delete(25)
arr.traverse()
