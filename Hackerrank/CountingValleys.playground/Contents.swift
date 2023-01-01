import Cocoa

func countingValleys(steps: Int, path: String) -> Int {
    
    var upHill = [String]()
    var downHill = [String]()
    var valleyCount = 0
    var isValley = false

    for i in path {
        if i == "U" {
            upHill.append(String(i))
            if upHill.count > downHill.count {
                isValley = false
            }
        } else {
            downHill.append(String(i))
            if upHill.count < downHill.count {
                isValley = true
            }
        }
        if upHill.count == downHill.count && isValley {
            valleyCount += 1
            upHill.removeAll()
            downHill.removeAll()
        }
    }

    return (valleyCount)
}
 
countingValleys(steps: 8, path: "UDDDUDUUDU")
