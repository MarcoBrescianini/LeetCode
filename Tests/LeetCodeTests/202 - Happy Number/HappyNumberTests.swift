import Testing

@testable import LeetCode

@Suite
struct HappyNumberTests {

    let instance: HappyNumber

    init() {
        self.instance = .init()
    }

    @Test
    func happyNumber() {
        #expect(instance.isHappy(19))
    }

    @Test
    func notHappyNumber() {
        #expect(!instance.isHappy(2))
    }

    @Test
    func negativeNumber() {
        #expect(!instance.isHappy(-2))
    }

    @Test
    func zero() {
        #expect(!instance.isHappy(0))
    }

    @Test
    func one() {
        #expect(instance.isHappy(1))
    }

    @Test
    func seven() {
        #expect(instance.isHappy(7))
    }
}
