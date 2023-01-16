import Cocoa

func numberToWords(_ number: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .spellOut
    formatter.locale = Locale(identifier: "tr_TR")
    return formatter.string(from: NSNumber(value: number)) ?? ""
}

let number = 356_756_876_878_575_712
print(numberToWords(number))
