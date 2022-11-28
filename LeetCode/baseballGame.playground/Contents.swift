import Cocoa

class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var sums: [Int] = []
        for i in 0..<ops.count {
            switch ops[i] {
            case "+":
                sums.append(sums[sums.count-1]+sums[sums.count-2])
            case "D":
                sums.append(sums[sums.count-1]*2)
            case "C":
                sums.removeLast()
            default:
                sums.append(Int(ops[i]) ?? 0)
            }
        }

        return sums.reduce(0,+)
    }
}
