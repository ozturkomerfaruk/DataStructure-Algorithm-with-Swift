import Cocoa

func backspaceCompare(_ s: String, _ t: String) -> Bool {
    
    var str1: String = ""
    var count1 = 0
    
    for i in s {
        if i == "#" {
            str1.popLast()
            count1 += 1
        } else {
            str1 += String(i)
        }
    }
    
    var str2: String = ""
    var count2 = 0
   
    for i in t {
        if i == "#" {
            str2.popLast()
            count2 += 1
        } else {
            str2 += String(i)
        }
    }

    
    return str1 == str2 ? true : false
}

backspaceCompare("a##c", "#a#c")

