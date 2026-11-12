import Testing

@testable import LeetCode

@Suite
struct UTF8ValidatorTests {

    let instance = UTF8Validator()

    @Test
    func oneCharOneByteValid() {
        #expect(instance.isValidUTF8([0b00001111]))
    }

    @Test
    func oneCharOneByteInvalid() {
        #expect(!instance.isValidUTF8([0b10001111]))
    }

    @Test
    func twoCharsOneByteValid() {
        #expect(instance.isValidUTF8([0b00001111, 0b00101010]))
    }

    @Test
    func twoCharsFirstByteValidSecondInvalid() {
        #expect(!instance.isValidUTF8([0b00101010, 0b10001111]))
    }

    @Test
    func oneCharTwoBytesValid() {
        #expect(instance.isValidUTF8([0b11011001, 0b10001011]))
    }

    @Test
    func oneCharTwoBytesInvalidContinuationStartingWith0() {
        #expect(!instance.isValidUTF8([0b11011001, 0b00001011]))
    }

    @Test
    func oneCharTwoBytesInvalidContinuationStartingWith11() {
        #expect(!instance.isValidUTF8([0b11011001, 0b11001011]))
    }

    @Test
    func oneCharThreeBytesValid() {
        #expect(instance.isValidUTF8([0b11101001, 0b10001011, 0b10001011]))
    }

    @Test
    func oneCharThreeBytesInvalidContinuationSecondByte() {
        #expect(!instance.isValidUTF8([0b11101001, 0b00001011, 0b10001011]))
    }

    @Test
    func oneCharThreeBytesInvalidContinuationThirdByte() {
        #expect(!instance.isValidUTF8([0b11101001, 0b10001011, 0b11001011]))
    }

    @Test
    func oneCharFourBytesValid() {
        #expect(instance.isValidUTF8([0b11110001, 0b10001011, 0b10001011, 0b10001011]))
    }

    @Test
    func oneCharFourBytesInvalidContinuationSecondByte() {
        #expect(!instance.isValidUTF8([0b11110001, 0b00001011, 0b10001011, 0b10001011]))
    }

    @Test
    func oneCharFourBytesInvalidContinuationThirdByte() {
        #expect(!instance.isValidUTF8([0b11110001, 0b10001011, 0b11001011, 0b10001011]))
    }

    @Test
    func oneCharFourBytesInvalidContinuationFourthByte() {
        #expect(!instance.isValidUTF8([0b11110001, 0b10001011, 0b10001011, 0b11001011]))
    }

    @Test
    func example1() {
        #expect(instance.isValidUTF8([197,130,1]))
    }

    @Test
    func example2() {
        #expect(!instance.isValidUTF8([235,140,4]))
    }
}
