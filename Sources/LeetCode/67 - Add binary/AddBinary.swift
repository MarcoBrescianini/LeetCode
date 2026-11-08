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
            let lhsBitString = i < lhs.count ? lhs[lhs.index(lhs.startIndex, offsetBy: i)] : "0"
            let rhsBitString = i < rhs.count ? rhs[rhs.index(rhs.startIndex, offsetBy: i)] : "0"

            let lhsBit = lhsBitString == "1" ? 1 : 0
            let rhsBit = rhsBitString == "1" ? 1 : 0

            let resultBit = (lhsBit + rhsBit + carry) % 2
            carry = (lhsBit + rhsBit + carry) / 2

            sum.insert(resultBit == 1 ? "1" : "0", at: sum.startIndex)
        }

        if carry != 0 {
            sum.insert("1", at: sum.startIndex)
        }

        return sum
    }
}
