import Foundation

class Solution {
    func fib(_ n: Int) -> Int {
        if n <= 0 {
            return 0
        } else if n == 1 || n == 2 {
            return 1
        } else {
            return fib(n-1) + fib(n-2)
        }
    }
}

var solution = Solution()
print(solution.fib(10))

