import Testing

@testable import LeetCode

@Suite
struct PalindromeNumberTests {

    let instance: PalindromeNumber

    init() {
        self.instance = .init()
    }

    @Test
    func palindromeNumber() {
        #expect(instance.isPalindrome(121))
    }

    @Test
    func digitIsPalindrome() {
        #expect(instance.isPalindrome(1))
    }

    @Test
    func zeroIsPalindrome() {
        #expect(instance.isPalindrome(0))
    }

    @Test
    func negativeNumberNotPalindrome() {
        #expect(!instance.isPalindrome(-121))
    }

    @Test
    func trailingZerosNotPalindrome() {
        #expect(!instance.isPalindrome(10))
    }
}
