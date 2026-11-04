import Testing

@testable import LeetCode

@Suite
struct PlusOneTests {

    let instance: PlusOne

    init() {
        self.instance = .init()
    }

    @Test
    func addingOneWithoutCarry() {
        #expect(instance.plusOne([1, 2, 3]) == [1, 2, 4])
    }

    @Test
    func addingOneWithoutCarry4Elements() {
        #expect(instance.plusOne([4, 3, 2, 1]) == [4, 3, 2, 2])
    }

    @Test
    func addingOneWithCarryCascadingToNextOnly() {
        #expect(instance.plusOne([4, 3, 2, 9]) == [4, 3, 3, 0])
    }

    @Test
    func addingOneWithCarry() {
        #expect(instance.plusOne([9]) == [1, 0])
    }

    @Test
    func addingOneWithCarryCascading() {
        #expect(instance.plusOne([9, 9, 9, 9, 9, 9, 9]) == [1, 0, 0, 0, 0, 0, 0, 0])
    }

}
