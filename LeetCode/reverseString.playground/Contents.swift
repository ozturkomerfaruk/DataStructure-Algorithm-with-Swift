import Foundation

class Solution {
    func reverseString(_ s: inout [Character]) {
        print(s)
        var left = 0
        var right = s.count - 1
        
        while left < right {
            var temp = s[left]
            s[left] = s[right]
            s[right] = temp
            
            left += 1
            right -= 1
        }
        
        print(s)
    }
}

var solution = Solution()
var str: [Character] = ["h","e","l","l","o", "2"]
solution.reverseString(&str)
