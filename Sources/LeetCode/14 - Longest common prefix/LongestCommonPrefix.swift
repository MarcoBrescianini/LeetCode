import Foundation

//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".
//
//
//
//Example 1:
//
//Input: strs = ["flower","flow","flight"]
//Output: "fl"
//Example 2:
//
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.
//
//
//Constraints:
//
//1 <= strs.length <= 200
//0 <= strs[i].length <= 200
//strs[i] consists of only lowercase English letters if it is non-empty.

struct LongestCommonPrefix {

    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 1 else { return strs[0] }

        var lcp = ""

        for (charPosition, char) in strs[0].enumerated() {
            var sameChar = true

            for i in 1 ..< strs.count where sameChar {
                let nextString = strs[i]
                if charPosition < nextString.count {
                    sameChar = char == nextString[nextString.index(nextString.startIndex, offsetBy: charPosition)]
                } else {
                    sameChar = false
                }
            }

            guard sameChar else { break }

            lcp.append(char)
        }

        return lcp
    }
}
