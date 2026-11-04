import Testing

@testable import LeetCode

struct AddTwoNumbersTests {

    @Test
    func samePower() {
        let input1 = [2,4,3]
        let input2 = [5,6,4]

        let output = sum(input1, input2)

        #expect(output == [7,0,8])
    }

    @Test
    func zeros() {
        let input1 = [0]
        let input2 = [0]

        let output = sum(input1, input2)

        #expect(output == [0])
    }

    @Test
    func firstBiggerThanSecond() {
        let input1 = [9,9,9,9,9,9,9]
        let input2 = [9,9,9,9]

        let output = sum(input1, input2)

        #expect(output == [8,9,9,9,0,0,0,1])
    }

    @Test
    func hugeNumber() {
        let input1 = [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]
        let input2 = [5,6,4]

        let output = sum(input1, input2)

        #expect(output == [6,6,4,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1])
    }

    @Test
    func testDifferentSizes() {
        let input1 = [2,4,9]
        let input2 = [5,6,4,9]

        let output = sum(input1, input2)

        #expect(output == [7,0,4,0,1])
    }

    private func sum(_ input1: [Int], _ input2: [Int]) -> [Int] {
        let l1 = makeListNode(input1)
        let l2 = makeListNode(input2)

        let result = AddTwoNumbers().addTwoNumbers(l1, l2)
        return makeIntArray(result)
    }

    private func makeListNode(_ array: [Int]) -> ListNode? {
        array.reversed().reduce(nil) { result, number in
            .init(number, result)
        }
    }

    private func makeIntArray(_ node: ListNode?) -> [Int] {
        guard let node else { return [] }

        var current: ListNode? = node
        var values = [Int]()

        while current != nil {
            values.append(current!.val)
            current = current?.next
        }

        return values
    }

}
