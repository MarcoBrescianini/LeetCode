import Testing

@testable import LeetCode

@Suite
struct AddBinaryTests {

    let instance: AddBinary

    init() {
        self.instance = .init()
    }

    @Test
    func onePlusOne() {
        #expect(instance.addBinary("1", "1") == "10")
    }

    @Test
    func threePlusOne() {
        #expect(instance.addBinary("11", "1") == "100")
    }

    @Test
    func twoStringsWithEqualBitCount() {
        #expect(instance.addBinary("1010", "1011") == "10101")
    }
}
