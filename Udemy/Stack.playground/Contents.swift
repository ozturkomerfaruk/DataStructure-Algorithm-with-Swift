import Cocoa

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
        let elements = items.map { String(describing: $0)}.joined(separator: "\n")
        return top + elements + bottom
    }
    
    func printStack() {
        print(description)
    }
}

var stack = Stack<String>()

print(stack.isEmpty())

stack.push(item: "One")
stack.push(item: "Two")
stack.push(item: "Three")

print(stack.isEmpty())

print(stack.lastItem())

stack.printStack()
