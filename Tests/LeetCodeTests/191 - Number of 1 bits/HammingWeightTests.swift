import Testing

@testable import LeetCode

struct HammingWeightTests {

    let instance: HammingWeight

    init() {
        self.instance = .init()
    }

    @Test
    func threeBits() {
        #expect(instance.hammingWeight(11) == 3)
    }

    @Test
    func powerOf2() {
        #expect(instance.hammingWeight(128) == 1)
    }

    @Test
    func one() {
        #expect(instance.hammingWeight(1) == 1)
    }

    @Test
    func bigNumber() {
        #expect(instance.hammingWeight(2147483645) == 30)
    }

    @Test
    func maxNumber() {
        #expect(instance.hammingWeight(Int(UInt32.max)) == 32)
    }

}
