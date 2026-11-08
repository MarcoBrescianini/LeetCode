import Foundation

//Given two binary strings a and b, return their sum as a binary string.
//
//Example 1:
//
//Input: a = "11", b = "1"
//Output: "100"
//Example 2:
//
//Input: a = "1010", b = "1011"
//Output: "10101"
//
//
//Constraints:
//
//1 <= a.length, b.length <= 10^4
//a and b consist only of '0' or '1' characters.
//Each string does not contain leading zeros except for the zero itself.

struct AddBinary {

    func addBinary(_ a: String, _ b: String) -> String {
        let lhs = a.reversed()
        let rhs = b.reversed()

        var sum = ""
        var carry = 0

        for i in 0 ..< max(lhs.count, rhs.count) {
            let lhsBit = i < lhs.count ? lhs[lhs.index(lhs.startIndex, offsetBy: i)] : nil
            let rhsBit = i < rhs.count ? rhs[rhs.index(rhs.startIndex, offsetBy: i)] : nil

            let resultBit: Character

            switch (lhsBit, rhsBit, carry) {
                case ("1", "1", 0):
                    resultBit = "0"
                    carry = 1
                case ("1", "1", 1):
                    resultBit = "1"
                case ("1", "0", 0):
                    resultBit = "1"
                case ("1", "0", 1):
                    resultBit = "0"
                case ("0", "1", 0):
                    resultBit = "1"
                case ("0", "1", 1):
                    resultBit = "0"
                case ("0", "0", 1):
                    resultBit = "1"
                    carry = 0
                case ("0", "0", 0):
                    resultBit = "0"
                case ("0", nil, 0):
                    resultBit = "0"
                case ("0", nil, 1):
                    resultBit = "1"
                    carry = 0
                case (nil, "0", 0):
                    resultBit = "0"
                case (nil, "0", 1):
                    resultBit = "1"
                    carry = 0
                case ("1", nil, 0):
                    resultBit = "1"
                case ("1", nil, 1):
                    resultBit = "0"
                case (nil, "1", 0):
                    resultBit = "1"
                case (nil, "1", 1):
                    resultBit = "0"
                default: fatalError()
            }

            sum.insert(resultBit, at: sum.startIndex)
        }

        if carry != 0 {
            sum.insert(contentsOf: String(carry), at: sum.startIndex)
        }

        return sum
    }
}
