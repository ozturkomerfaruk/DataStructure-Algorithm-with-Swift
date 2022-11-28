import Cocoa

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var setNum = Set<Int>()
        for i in nums {
            setNum.insert(i)
        }
        return setNum.count == nums.count ? false : true
    }
}
