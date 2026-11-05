import Foundation

//Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
//
//
//
//Example 1:
//
//Input: n = 3
//Output: ["((()))","(()())","(())()","()(())","()()()"]
//Example 2:
//
//Input: n = 1
//Output: ["()"]
//
//
//Constraints:
//
//1 <= n <= 8

struct GenerateParentheses {

    func generateParenthesis(_ n: Int) -> [String] {
        var combinations = [String]()

        var open = ""
        generateParenthesis(open: n, close: n, combination: &open, combinations: &combinations)
        
        return combinations
    }

    private func generateParenthesis(open: Int, close: Int, combination: inout String, combinations: inout [String]) {
        guard open > 0 || close > 0 else {
            combinations.append(combination)
            return
        }

        if open > 0 {
            var combination1 = combination
            combination1.append("(")

            generateParenthesis(open: open - 1, close: close, combination: &combination1, combinations: &combinations)
        }

        if close > 0, close > open {
            var combination2 = combination
            combination2.append(")")

            generateParenthesis(open: open, close: close - 1, combination: &combination2, combinations: &combinations)
        }
    }
}
