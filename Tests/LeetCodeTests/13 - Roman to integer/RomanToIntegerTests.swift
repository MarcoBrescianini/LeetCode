import Testing

@testable import LeetCode

@Suite
struct Test {

    let instance: RomanToInteger

    init() {
        self.instance = .init()
    }

    @Test
    func one() {
        #expect(instance.romanToInt("I") == 1)
    }

    @Test
    func two() {
        #expect(instance.romanToInt("II") == 2)
    }

    @Test
    func three() {
        #expect(instance.romanToInt("III") == 3)
    }

    @Test
    func four() {
        #expect(instance.romanToInt("IV") == 4)
    }

    @Test
    func five() {
        #expect(instance.romanToInt("V") == 5)
    }

    @Test
    func six() {
        #expect(instance.romanToInt("VI") == 6)
    }

    @Test
    func nine() {
        #expect(instance.romanToInt("IX") == 9)
    }

    @Test
    func ten() {
        #expect(instance.romanToInt("X") == 10)
    }

    @Test
    func twenty() {
        #expect(instance.romanToInt("XX") == 20)
    }

    @Test
    func fourty() {
        #expect(instance.romanToInt("XL") == 40)
    }

    @Test
    func fifty() {
        #expect(instance.romanToInt("L") == 50)
    }

    @Test
    func fiftyEight() {
        #expect(instance.romanToInt("LVIII") == 58)
    }

    @Test
    func hundred() {
        #expect(instance.romanToInt("C") == 100)
    }

    @Test
    func fourHundred() {
        #expect(instance.romanToInt("CD") == 400)
    }

    @Test
    func fiveHundred() {
        #expect(instance.romanToInt("D") == 500)
    }

    @Test
    func nineHundred() {
        #expect(instance.romanToInt("CM") == 900)
    }

    @Test
    func oneThousand() {
        #expect(instance.romanToInt("M") == 1000)
    }

    @Test
    func nineteenNinetyFour() {
        #expect(instance.romanToInt("MCMXCIV") == 1994)
    }

    @Test
    func max() {
        #expect(instance.romanToInt("MMMCMXCIX") == 3999)
    }
}
