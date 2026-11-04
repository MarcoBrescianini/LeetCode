import Foundation

class ListNode {
     var val: Int
     var next: ListNode?
     init() { self.val = 0; self.next = nil; }
     init(_ val: Int) { self.val = val; self.next = nil; }
     init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

struct AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let firstDigits = l1?.digits ?? []
        let secondDigits = l2?.digits ?? []

        var sum = [Int]()
        var carry = 0

        for i in 0 ..< max(firstDigits.count, secondDigits.count) {
            let firstDigit = i < firstDigits.endIndex ? firstDigits[i] : 0
            let secondDigit = i < secondDigits.endIndex ? secondDigits[i] : 0
            let summed = carry + (firstDigit + secondDigit)
            sum.append(summed % 10)
            carry = summed / 10
        }

        if carry > 0 {
            sum.append(carry)
        }

        return sum.listNode
    }
}

private extension ListNode {

    var digits: [Int] {
        [val] + (next?.digits ?? [])
    }
}

private extension Array where Element == Int {

    var listNode: ListNode? {
        reversed().reduce(nil) { node, element in
            .init(element, node)
        }
    }
}
