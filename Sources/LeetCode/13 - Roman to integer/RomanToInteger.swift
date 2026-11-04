import Foundation

// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
//
//Symbol       Value
//I             1
//V             5
//X             10
//L             50
//C             100
//D             500
//M             1000
//For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
//
//Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
//
//I can be placed before V (5) and X (10) to make 4 and 9.
//X can be placed before L (50) and C (100) to make 40 and 90.
//C can be placed before D (500) and M (1000) to make 400 and 900.
//Given a roman numeral, convert it to an integer.
//
//
//
//Example 1:
//
//Input: s = "III"
//Output: 3
//Explanation: III = 3.
//Example 2:
//
//Input: s = "LVIII"
//Output: 58
//Explanation: L = 50, V= 5, III = 3.
//Example 3:
//
//Input: s = "MCMXCIV"
//Output: 1994
//Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
//
//
//Constraints:
//
//1 <= s.length <= 15
//s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
//It is guaranteed that s is a valid roman numeral in the range [1, 3999].

struct RomanToInteger {

    func romanToInt(_ s: String) -> Int {
        var index = s.startIndex
        let endIndex = s.endIndex
        var number = 0

        while index < endIndex {
            let char = s[index]

            switch char {
                case "I", "X", "C":
                    let nextIndex = s.index(after: index)

                    guard nextIndex < endIndex else { fallthrough }

                    let nextChar = s[nextIndex]
                    switch nextChar {
                        case "V" where char == "I": fallthrough
                        case "X" where char == "I": fallthrough
                        case "L" where char == "X": fallthrough
                        case "C" where char == "X": fallthrough
                        case "D" where char == "C": fallthrough
                        case "M" where char == "C":
                            number += nextChar.romanValue - char.romanValue
                            index = s.index(index, offsetBy: 2)
                        default:
                            number += char.romanValue
                            index = s.index(after: index)
                    }
                default:
                    number += char.romanValue
                    index = s.index(after: index)
            }
        }

        return number
    }
}

private extension Character {

    var romanValue: Int {
        switch self {
            case "I": 1
            case "V": 5
            case "X": 10
            case "L": 50
            case "C": 100
            case "D": 500
            case "M": 1000
            default: fatalError()
        }
    }
}
