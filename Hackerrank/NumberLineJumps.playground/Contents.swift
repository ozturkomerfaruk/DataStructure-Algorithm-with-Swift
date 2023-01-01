import Cocoa

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    
    var unknown = v2 - v1
    var number = x1 - x2
    if v1 - v2 == 0 {
        return "NO"
    }
    if number / unknown < 0 {
        return "NO"
    }
    return number % unknown == 0 ? "YES" : "NO"
}
 
kangaroo(x1: 21, v1: 6, x2: 47, v2: 3)
