import Cocoa

class MyQueue {
    
    private var myStack = [Int]()
    
    init(_ myStack: [Int]) {
        self.myStack = myStack
    }
    
    init() {
        
    }
    
    func push(_ x: Int) -> Void {
        myStack.append(x)
    }
    
    func pop() -> Int {
        for _ in 0..<myStack.count {
            myStack.append(myStack.removeFirst())
        }
        return myStack.removeFirst()
    }
    
    func peek() -> Int {
        return myStack[0]
    }
    
    func empty() -> Bool {
        return myStack.count == 0
    }
    
    func list() {
        if myStack.count == 0 {
            print("List is Empty")
        }
        for i in myStack {
            print(i)
        }
    }
}


var myQueue = MyQueue()
myQueue.push(1); // queue is: [1]
myQueue.push(2); // queue is: [1, 2] (leftmost is front of the queue)
myQueue.peek(); // return 1
myQueue.pop(); // return 1, queue is [2]
myQueue.empty(); // return false
