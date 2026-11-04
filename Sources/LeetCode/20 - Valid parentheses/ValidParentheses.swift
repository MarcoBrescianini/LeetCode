import Foundation

//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.
//
//
//Example 1:
//
//Input: s = "()"
//
//Output: true
//
//Example 2:
//
//Input: s = "()[]{}"
//
//Output: true
//
//Example 3:
//
//Input: s = "(]"
//
//Output: false
//
//Example 4:
//
//Input: s = "([])"
//
//Output: true
//
//Example 5:
//
//Input: s = "([)]"
//
//Output: false
//
//
//
//Constraints:
//
//1 <= s.length <= 10^4
//s consists of parentheses only '()[]{}'.

struct ValidParentheses {

    func isValid(_ s: String) -> Bool {
        var openParens = [Character]()

        for char in s {
            switch char {
                case "(":
                    openParens.append(")")
                case "[":
                    openParens.append("]")
                case "{":
                    openParens.append("}")
                case ")", "]", "}":
                    let open = openParens.popLast()

                    guard open == char else { return false }
                default:
                    continue
            }
        }

        return openParens.isEmpty
    }
}
