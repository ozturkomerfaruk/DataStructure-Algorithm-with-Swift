import Foundation

class Node {
    var value: Int
    var left: Node?
    var right: Node?
    
    init(_ value: Int) {
        self.value = value
    }
}

class BST {
    var root: Node?
    
    func insert(_ val: Int) {
        let newNode = Node(val)
        
        if root == nil {
            root = newNode
        } else {
            var current = root
            while true {
                if val < current!.value {
                    if current?.left == nil {
                        current?.left = newNode
                        return
                    }
                    current = current?.left
                } else {
                    if current?.right == nil {
                        current?.right = newNode
                        return
                    }
                    current = current?.right
                }
            }
        }
    }
    
    func contains(_ val: Int) -> Bool {
        var tempNode = root
        
        while (tempNode != nil) {
            if val < tempNode!.value {
                tempNode = tempNode!.left
            } else if val > tempNode!.value {
                tempNode = tempNode!.right
            } else {
                return true
            }
        }
        return false
    }
    
    func minOfNode(node: Node) -> Int {
        var tempNode = node
        while (tempNode.left != nil) {
            tempNode = tempNode.left!
        }
        return tempNode.value
    }
    
    func maxOfNode(node: Node) -> Int {
        var tempNode = node
        while (tempNode.right != nil) {
            tempNode = tempNode.right!
        }
        return tempNode.value
    }
}


var bst = BST()
bst.insert(2)
bst.insert(1)
bst.insert(3)
bst.insert(5)
bst.insert(4)
bst.insert(6)
bst.insert(0)

bst.contains(0)


bst.root?.value
bst.root?.right?.value
bst.root?.left?.value
bst.root?.right?.right?.value

bst.minOfNode(node: bst.root!)
bst.maxOfNode(node: bst.root!)
