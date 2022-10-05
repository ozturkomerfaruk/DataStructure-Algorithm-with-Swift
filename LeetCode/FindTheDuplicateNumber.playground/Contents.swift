import Cocoa

var nums = [5,1,2,3,4,5,6,7,8,0]

func dublicate() -> Int {
    for i in 0 ..< nums.count {
        for j in 0 ..< nums.count {
            if i == j {
                continue
            }
            if nums[i] == nums[j] {
                return nums[i]
            }
        }
    }
    return 0
}

print(dublicate())

//MARK: FLOYD Algoritması, Sadece bu soru için yapılabilir bir algoritma. Youtube'dan bakabilirsin.

func dublicate2() -> Int {
        var slowPointer = 0
        var fastPointer = 0
        
        while true {
            slowPointer = nums[slowPointer]
            fastPointer = nums[nums[fastPointer]]
            if slowPointer == fastPointer {
                break
            }
        }
        
        var secondSlowPointer = 0
        
        while true {
            slowPointer = nums[slowPointer]
            secondSlowPointer = nums[secondSlowPointer]
            if slowPointer == secondSlowPointer {
                return slowPointer
            }
        }
    }

print(dublicate2())
