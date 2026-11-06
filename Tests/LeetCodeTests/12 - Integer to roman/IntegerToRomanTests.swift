import Testing

@testable import LeetCode

@Suite
struct IntegerToRomanTests {

    let instance: IntegerToRoman


    init() {
        self.instance = .init()
    }

    @Test
    func one() {
        #expect(instance.intToRoman(1) == "I")
    }

    @Test
    func two() {
        #expect(instance.intToRoman(2) == "II")
    }

    @Test
    func four() {
        #expect(instance.intToRoman(4) == "IV")
    }

    @Test
    func five() {
        #expect(instance.intToRoman(5) == "V")
    }

    @Test
    func six() {
        #expect(instance.intToRoman(6) == "VI")
    }

    @Test
    func nine() {
        #expect(instance.intToRoman(9) == "IX")
    }

    @Test
    func ten() {
        #expect(instance.intToRoman(10) == "X")
    }

    @Test
    func fourty() {
        #expect(instance.intToRoman(40) == "XL")
    }

    @Test
    func fourtyNine() {
        #expect(instance.intToRoman(49) == "XLIX")
    }

    @Test
    func fifty() {
        #expect(instance.intToRoman(50) == "L")
    }

    @Test
    func fiftyEight() {
        #expect(instance.intToRoman(58) == "LVIII")
    }

    @Test
    func ninety() {
        #expect(instance.intToRoman(90) == "XC")
    }

    @Test
    func hundred() {
        #expect(instance.intToRoman(100) == "C")
    }

    @Test
    func fourHundred() {
        #expect(instance.intToRoman(400) == "CD")
    }

    @Test
    func fiveHundred() {
        #expect(instance.intToRoman(500) == "D")
    }

    @Test
    func nineHundred() {
        #expect(instance.intToRoman(900) == "CM")
    }

    @Test
    func oneThousand() {
        #expect(instance.intToRoman(1000) == "M")
    }

    @Test
    func oneThousandNineHundredNinetyFour() {
        #expect(instance.intToRoman(1994) == "MCMXCIV")
    }

    @Test
    func threeThousandAndSomething() {
        #expect(instance.intToRoman(3749) == "MMMDCCXLIX")
    }

//    @Test("all valid numbers", arguments: 1...3999)
//    func allValidNumbers(num: Int) {
//        let roman = instance.intToRoman(num)
//        let expected = RomanToInteger().romanToInt(roman)
//        #expect(expected == num)
//    }
}
