import Foundation

//Convert a non-negative integer num to its English words representation.
//
//Example 1:
//
//Input: num = 123
//Output: "One Hundred Twenty Three"
//Example 2:
//
//Input: num = 12345
//Output: "Twelve Thousand Three Hundred Forty Five"
//Example 3:
//
//Input: num = 1234567
//Output: "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven"
//
//
//Constraints:
//
//0 <= num <= 2^31 - 1

struct IntegerToEnglish {

    func numberToWords(_ num: Int) -> String {
        toEnglish(num).capitalized
    }

    private func toEnglish(_ number: Int) -> String {
        switch number {
            case (0...9): digits(number)
            case (10..<100): tens(number)
            case (100..<1000) where number % 100 == 0: "\(toEnglish(number / 100)) hundred"
            case (1000..<1_000_000) where number % 1000 == 0: "\(toEnglish(number / 1000)) thousand"
            case (1_000_000..<1_000_000_000) where number % 1_000_000 == 0: "\(toEnglish(number / 1_000_000)) million"
            case (1_000_000_000..<1_000_000_000_000) where number % 1_000_000_000 == 0: "\(toEnglish(number / 1_000_000_000)) billion"
            case (100..<1000): toEnglish(wholePart(number, unit: 100)) + " " + toEnglish(number % 100)
            case (1000..<1_000_000): toEnglish(wholePart(number, unit: 1000)) + " " + toEnglish(decimalPart(number, unit: 1000))
            case (1_000_000..<1_000_000_000): toEnglish(wholePart(number, unit: 1_000_000)) + " " + toEnglish(decimalPart(number, unit: 1_000_000))
            case (1_000_000_000..<1_000_000_000_000): toEnglish(wholePart(number, unit: 1_000_000_000)) + " " + toEnglish(decimalPart(number, unit: 1_000_000_000))
            default: ""
        }
    }

    private func wholePart(_ number: Int, unit: Int) -> Int {
        unit * (number / unit)
    }

    private func decimalPart(_ number: Int, unit: Int) -> Int {
        number % unit
    }

    private func digits(_ number: Int) -> String {
        switch number {
            case 0: "zero"
            case 1: "one"
            case 2: "two"
            case 3: "three"
            case 4: "four"
            case 5: "five"
            case 6: "six"
            case 7: "seven"
            case 8: "eight"
            case 9: "nine"
            default: ""
        }
    }

    private func tens(_ number: Int) -> String {
        switch number {
            case 10: "ten"
            case 11: "eleven"
            case 12: "twelve"
            case 13: "thirteen"
            case 14: "fourteen"
            case 15: "fifteen"
            case 16: "sixteen"
            case 17: "seventeen"
            case 18: "eighteen"
            case 19: "nineteen"
            case 20: "twenty"
            case 30: "thirty"
            case 40: "forty"
            case 50: "fifty"
            case 60: "sixty"
            case 70: "seventy"
            case 80: "eighty"
            case 90: "ninety"
            default: [tens(wholePart(number, unit: 10)), digits(decimalPart(number, unit: 10))].joined(separator: " ")
        }
    }
}
