import Testing

@testable import LeetCode

struct ContainsDuplicateTests {

    let instance: ContainsDuplicate

    init() {
        self.instance = .init()
    }

    @Test
    func singleValue() {
        #expect(!instance.containsDuplicate([1]))
    }

    @Test
    func sameTwoValues() {
        #expect(instance.containsDuplicate([1, 1]))
    }

    @Test
    func ascendingValuesDuplicateIsLast() {
        #expect(instance.containsDuplicate([1, 2, 3, 4, 1]))
    }

    @Test
    func ascendingValuesNoDuplicates() {
        #expect(!instance.containsDuplicate([1, 2, 3, 4]))
    }

}
