import Cocoa

class MyStack {
    
    private var myQueue = [Int]()

    init() {
        
    }
    
    init(myQueue: [Int]) {
        self.myQueue = myQueue
    }
    
    func push(_ x: Int) {
        myQueue.append(x)
    }
    
    func pop() -> Int {
        for _ in 0 ..< myQueue.count {
            myQueue.append(myQueue.removeLast())
        }
        return myQueue.removeLast()
    }
    
    func top() -> Int {
        return myQueue.last ?? 0
    }
    
    func empty() -> Bool {
        return myQueue.count == 0
    }
}
