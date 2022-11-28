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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        if head == nil {
            return nil
        }
        
        var pointer = head
        
        while pointer!.next != nil {
            
            if val == pointer!.next!.val {
                pointer!.next = pointer!.next!.next
            } else {
                pointer = pointer!.next
            }
        }
        return head
    }
}
