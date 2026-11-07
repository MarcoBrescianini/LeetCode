import Testing

@testable import LeetCode

@Suite
struct ReverseBitsTests {

    let instance: ReverseBits

    init() {
        self.instance = .init()
    }

    @Test
    func one() {
        #expect(instance.reverseBits(0b00000000000000000000000000000001) == 0b10000000000000000000000000000000)
    }

    @Test
    func zero() {
        #expect(instance.reverseBits(0b00000000000000000000000000000000) == 0b00000000000000000000000000000000)
    }

    @Test
    func example1() {
        #expect(instance.reverseBits(0b00000010100101000001111010011100) == 0b00111001011110000010100101000000)
    }

    @Test
    func example2() {
        #expect(instance.reverseBits(0b01111111111111111111111111111100) == 0b00111111111111111111111111111110)
    }

}
