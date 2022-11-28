import Cocoa

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        
        //Boyer Moore algoritması
        var result = 0
        var count = 0
        for num in nums {
            if count == 0 {
                result = num
            }
            count += (num == result) ? 1 : (-1)
            
        }
        return result
    }
}
