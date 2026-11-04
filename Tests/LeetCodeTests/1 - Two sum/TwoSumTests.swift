import Testing

@testable import LeetCode

@Suite
struct TwoSumTests {

    let instance: TwoSum

    init() {
        self.instance = .init()
    }

    @Test
    func firstTest() {
        #expect(instance.twoSum([2,7,11,15], 9) == [0, 1])
    }

    @Test
    func secondTest() {
        #expect(instance.twoSum([3,2,4], 6) == [1, 2])
    }

    @Test
    func thirdTest() {
        #expect(instance.twoSum([3,3], 6) == [0, 1])
    }

}
