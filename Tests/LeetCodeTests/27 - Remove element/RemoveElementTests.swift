import Testing

@testable import LeetCode

@Suite
struct RemoveElementTests {

    let instance: RemoveElement

    init() {
        self.instance = .init()
    }

    @Test
    func firstTest() {
        var nums = [3,2,2,3]
        #expect(instance.removeElement(&nums, 3) == 2)
        #expect(nums == [2, 2, 3, 3])
    }

    @Test
    func secondTest() {
        var nums = [0,1,2,2,3,0,4,2]
        #expect(instance.removeElement(&nums, 2) == 5)
        #expect(nums == [0,1,4,0,3,2,2,2])
    }
}
