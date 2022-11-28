import Cocoa

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func getIntersectionNode( headA: ListNode?,  headB: ListNode?) -> ListNode? {
        
        if headA == nil || headB == nil {
            return nil
        }
            
        var firstPointer = headA
        var secondPointer = headB
        
        while firstPointer !== secondPointer {
            firstPointer = firstPointer == nil ? headB : firstPointer?.next
            secondPointer = secondPointer == nil ? headA : secondPointer?.next
        }
        
        return firstPointer
    }
}

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs === rhs
    }
}
