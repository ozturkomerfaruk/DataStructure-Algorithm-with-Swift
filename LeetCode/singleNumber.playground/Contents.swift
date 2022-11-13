import Foundation

func singleNumber(nums: inout [Int]) -> Int {
    
    if nums.count == 1 {
        return nums[0]
    } else {
        var result = 0
        for num in nums {
            result = num ^ result
        }
        return result
    }
}

//MARK: Bit Manipulation

// ^ ---> XOR
/// 0-0 -> 0
/// 1-1 -> 0
/// 1-0 -> 1
/// 0-1 -> 1
