import Testing

@testable import LeetCode

@Suite
struct StringToIntegerTests {

    let instance: StringToInteger

    init() {
        self.instance = .init()
    }

    @Test
    func positiveNumber() {
        #expect(instance.myAtoi("42") == 42)
    }

    @Test
    func positiveNumberWithPlus()  {
        #expect(instance.myAtoi("+42") == 42)
    }

    @Test
    func positiveNumberLeadingWhitespaces()  {
        #expect(instance.myAtoi("  42") == 42)
    }

    @Test
    func positiveNumberWithPlusAfterLeadingWhitespaces()  {
        #expect(instance.myAtoi("  +42") == 42)
    }

    @Test
    func oneThousand() {
        #expect(instance.myAtoi("1000") == 1000)
    }

    @Test
    func negativeOneThousand() {
        #expect(instance.myAtoi("-1000") == -1000)
    }

    @Test
    func zero() {
        #expect(instance.myAtoi("0") == 0)
    }

    @Test
    func minusZero() {
        #expect(instance.myAtoi("-0") == 0)
    }

    @Test
    func negativeNumber()  {
        #expect(instance.myAtoi("-42") == -42)
    }

    @Test
    func negativeNumberLeadingWhitespaces()  {
        #expect(instance.myAtoi("   -42") == -42)
    }

    @Test
    func positiveNumberWithTrailingNonDigits() {
        #expect(instance.myAtoi("1337c0d3") == 1337)
    }

    @Test
    func positiveNumberWithLeadingWhitespacesAndTrailingNonDigits() {
        #expect(instance.myAtoi("     1337c0d3") == 1337)
    }

    @Test
    func negativeNumberWithTrailingNonDigits() {
        #expect(instance.myAtoi("-1337c0d3") == -1337)
    }

    @Test
    func negativeNumberWithLeadingWhitespacesAndTrailingNonDigits() {
        #expect(instance.myAtoi("     -1337c0d3") == -1337)
    }

    @Test
    func word() {
        #expect(instance.myAtoi("fortyTwo") == 0)
    }

    @Test
    func zeroMinusOne() {
        #expect(instance.myAtoi("0-1") == 0)
    }

    @Test
    func oneMinusTwo() {
        #expect(instance.myAtoi("1-2") == 1)
    }

    @Test
    func whitespaces() {
        #expect(instance.myAtoi("       ") == 0)
    }

    @Test
    func whitespacesThenPlus() {
        #expect(instance.myAtoi("       +") == 0)
    }

    @Test
    func whitespacesThenMinus() {
        #expect(instance.myAtoi("       -") == 0)
    }

    @Test
    func whitespacesThenWord() {
        #expect(instance.myAtoi("    w123") == 0)
    }

    @Test
    func whitespacesThenMinusThenWord() {
        #expect(instance.myAtoi("       -w123") == 0)
    }

    @Test
    func numberThenWhitespaces() {
        #expect(instance.myAtoi("123   4") == 123)
    }

    @Test
    func ignoresLeadingZeros() {
        #expect(instance.myAtoi("000042") == 42)
    }

    @Test
    func ignoresLeadingZerosAfterMinus() {
        #expect(instance.myAtoi("-000042") == -42)
    }

    @Test
    func leadingZerosThenMinus() {
        #expect(instance.myAtoi("00-0042") == 0)
    }

    @Test
    func whitespacesThenLeadingZeros() {
        #expect(instance.myAtoi("       000042") == 42)
    }

    @Test
    func minusThenPlus() {
        #expect(instance.myAtoi("-+123") == 0)
    }

    @Test
    func plusThenMinus() {
        #expect(instance.myAtoi("+-123") == 0)
    }

    @Test
    func numberEqualToInt32MaxValue() {
        #expect(instance.myAtoi("2147483647") == Int32.max)
    }

    @Test
    func numberGreaterThanInt32MaxValueRoundToMaxValue() {
        #expect(instance.myAtoi("2147483648") == Int32.max)
    }

    @Test
    func numberLessThanInt32MaxValueDoesNotRound() {
        #expect(instance.myAtoi("2147483646") == (Int32.max - 1))
    }

    @Test
    func numberEqualToInt32MinValue() {
        #expect(instance.myAtoi("-2147483648") == Int32.min)
    }

    @Test
    func numberGreaterThanInt32MinValueDoesNotRound() {
        #expect(instance.myAtoi("-2147483647") == (Int32.min + 1))
    }

    @Test
    func numberLessThanInt32MinValueRoundToMinValue() {
        #expect(instance.myAtoi("-2147483649") == Int32.min)
    }

    @Test
    func emptyString() {
        #expect(instance.myAtoi("") == 0)
    }

    @Test
    func positiveNumberThenDot() {
        #expect(instance.myAtoi("  3.14") == 3)
    }

    @Test
    func negativeNumberThenDot() {
        #expect(instance.myAtoi("  -3.14") == -3)
    }

    @Test
    func bigNumberThenDot() {
        #expect(instance.myAtoi("  -300.000.000.14") == -300)
    }

    @Test
    func emoji() {
        #expect(instance.myAtoi("😅") == 0)
    }

    @Test
    func positiveNumberThenEmoji() {
        #expect(instance.myAtoi("42😅") == 42)
    }
}
