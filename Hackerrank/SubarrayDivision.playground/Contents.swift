import Cocoa

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var count = 0
    for i in 0..<s.count {
        var sum = 0
        for j in i..<min(i + m, s.count) {
            sum += s[j]
        }
        if sum == d {
            count += 1
        }
    }
    return count
}

birthday(s: [1, 2, 1, 3, 2], d: 3, m: 2)

birthday(s: [1, 1, 1, 1, 1, 1], d: 3, m: 2)

birthday(s: [2, 2, 1, 3, 2], d: 4, m: 2)
