import Cocoa

struct Queue<Item> {
    private var items: [Item] = []
    
    //Enqueue
    mutating func enqueue(item: Item) {
        items.append(item)
    }
    
    //Dequeue
    mutating func dequeue() -> Item {
        guard !items.isEmpty else { fatalError("The queue is empty!") }
        return items.removeFirst()
    }
    
    //Head
    var head: Item {
        guard let firstItem = items.first else { fatalError("The queue is empty!") }
        return firstItem
    }
    
    //Tail
    var tail: Item {
        guard let lastItem = items.last else { fatalError("The queue is empty!") }
        return lastItem
    }
    
    mutating func isEmpty() -> Bool {
        return items.count == 0
    }
    
    mutating func size() -> Int {
        return items.count
    }
}

extension Queue: CustomStringConvertible {
    var description: String{
        let start = "--Queue--\n"
        let end = "\n---------"
        let elements = items.map {
            String(describing: $0)
        }.reversed().joined(separator: " -> ")
        return start + elements + end
    }
    
    func printQueue() {
        print(description)
    }
}

var queue: Queue = Queue<String>()
queue.enqueue(item: "One")
queue.enqueue(item: "Two")
queue.enqueue(item: "Three")
queue.printQueue()

struct Stack<Item> {
    private var items: [Item] = []
    
    // Peek
    func peek() -> Item {
        guard let topItem = items.last else { fatalError("The stack is empty!") }
        return topItem
    }
    
    mutating func pop() -> Item {
        return items.removeLast()
    }
    
    mutating func push(item: Item) {
        items.append(item)
    }
    
    mutating func isEmpty() -> Bool {
        return items.count == 0
    }
    
    mutating func lastItem() -> Item {
        return items[items.count - 1]
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let top = "--Stack--\n"
        let bottom = "\n---------"
        let elements = items.map { String(describing: $0)}.joined(separator: " -> ")
        return top + elements + bottom
    }
    
    func printStack() {
        print(description)
    }
}

var stack = Stack<String>()
stack.push(item: "One")
stack.push(item: "Two")
stack.push(item: "Three")
stack.printStack()
