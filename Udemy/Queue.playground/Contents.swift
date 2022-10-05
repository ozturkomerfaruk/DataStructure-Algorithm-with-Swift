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
        let start = "Queue\n\n"
        let end = "\n\n[HEAD]"
        let elements = items.map {
            String(describing: $0)
        }.joined(separator: " -> ")
        return start + elements + end
    }
    
    func printQueue() {
        print(description)
    }
}

var queue: Queue = Queue<String>()

print(queue.isEmpty())

queue.enqueue(item: "One")
queue.enqueue(item: "Two")
queue.enqueue(item: "Three")
queue.enqueue(item: "Four")
queue.enqueue(item: "Five")

queue.dequeue()
queue.printQueue()

print(queue.isEmpty())
print(queue.size())

