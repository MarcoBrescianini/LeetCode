import Testing

@testable import LeetCode

struct GenerateParenthesesTests {

    let instance: GenerateParentheses

    init() {
        self.instance = .init()
    }

    @Test
    func one() {
        #expect(instance.generateParenthesis(1) == ["()"])
    }

    @Test
    func two() {
        #expect(instance.generateParenthesis(2) == ["(())", "()()"])
    }

    @Test
    func three() {
        #expect(instance.generateParenthesis(3) == ["((()))","(()())","(())()","()(())","()()()"])
    }

    @Test
    func four() {
        let actual = instance.generateParenthesis(4)
        let expected = ["(((())))", "((()()))", "((())())", "((()))()", "(()(()))", "(()()())", "(()())()", "(())(())", "(())()()", "()((()))", "()(()())", "()(())()", "()()(())", "()()()()"]
        #expect(actual == expected)
    }
}
