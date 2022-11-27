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

var dict: [String : Int] = ["asd":10, "qq":12]

print(dict)

for i in dict {
    print(i.key)
}
