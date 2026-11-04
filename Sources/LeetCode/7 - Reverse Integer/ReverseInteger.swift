
import Foundation

// Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
//
//Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
//
//
//
//Example 1:
//
//Input: x = 123
//Output: 321
//Example 2:
//
//Input: x = -123
//Output: -321
//Example 3:
//
//Input: x = 120
//Output: 21
//
//
//Constraints:
//
//-2^31 <= x <= 2^31 - 1

struct ReverseInteger {

    static func reverse(_ number: Int) -> Int {
        var n = number
        var reversed = 0
        let maxLimit = Int32.max / 10
        let minLimit = Int32.min / 10
        while n != 0 {
            guard reversed <= maxLimit else { return 0 }
            guard reversed >= minLimit else { return 0 }

            reversed = (reversed * 10) + (n % 10)
            n /= 10
        }
        return reversed
    }
}
