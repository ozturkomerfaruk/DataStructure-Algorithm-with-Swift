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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        var leftPointer = head
        var rightPointer = head
        
        var temp = n
        
        while temp > 0 && rightPointer?.next != nil {
            rightPointer = rightPointer?.next
            temp -= 1
        }
        
        while rightPointer != nil && rightPointer?.next != nil {
            rightPointer = rightPointer?.next
            leftPointer = leftPointer?.next
        }
        
        if leftPointer == head && rightPointer == nil {
            return head?.next
        }
        
        leftPointer?.next = leftPointer?.next?.next
        
        return head
    }
}

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs === rhs
    }
}
