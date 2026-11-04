import Testing

@testable import LeetCode

@Suite
struct Test {

    @Test
    func positiveNumber() {
        #expect(ReverseInteger.reverse(123) == 321)
    }

    @Test
    func zero() {
        #expect(ReverseInteger.reverse(0) == 0)
    }

    @Test
    func negativeNumber() {
        #expect(ReverseInteger.reverse(-123) == -321)
    }

    @Test
    func positiveNumberTrailingZero() {
        #expect(ReverseInteger.reverse(120) == 21)
    }

    @Test
    func positiveArithmeticOverflow() {
        #expect(ReverseInteger.reverse(Int(Int32.max)) == 0)
    }

    @Test
    func negativeArithmeticOverflow() {
        #expect(ReverseInteger.reverse(Int(Int32.min)) == 0)
    }

    @Test
    func positiveLimit() {
        #expect(ReverseInteger.reverse(1463847412) == 2147483641)
    }

    @Test
    func negativeLimit() {
        #expect(ReverseInteger.reverse(-1463847412) == -2147483641)
    }
}
