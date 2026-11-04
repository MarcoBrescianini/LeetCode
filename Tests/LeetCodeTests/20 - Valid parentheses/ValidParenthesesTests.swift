import Testing

@testable import LeetCode

@Suite
struct ValidParenthesesTests {

    let instance: ValidParentheses

    init() {
        self.instance = .init()
    }

    @Test
    func balancedParens() {
        #expect(instance.isValid("()"))
    }

    @Test
    func parensWrongOrder() {
        #expect(!instance.isValid(")("))
    }

    @Test
    func onlyOneClosedParen() {
        #expect(!instance.isValid(")"))
    }

    @Test
    func balancedAllParens() {
        #expect(instance.isValid("()[]{}"))
    }

    @Test
    func embeddedBracketsIntoParens() {
        #expect(instance.isValid("([])"))
    }

    @Test
    func openParenClosedBracket() {
        #expect(!instance.isValid("(]"))
    }

    @Test
    func closedInWrongOrder() {
        #expect(!instance.isValid("([)]"))
    }
}
