import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let node = root else {
            return nil
        }
       
        var left = invertTree(node.left)
        var right = invertTree(node.right)
        
        node.left = right
        node.right = left
        
        return node
    }
    
    func printTree(node: TreeNode?) {
        guard let node = node else {
            return
        }
        print(node.value)
        printTree(node: node.left)
        printTree(node: node.right)
    }
}
