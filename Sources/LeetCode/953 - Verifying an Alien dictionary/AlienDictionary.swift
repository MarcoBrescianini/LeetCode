import Foundation

//In an alien language, surprisingly, they also use English lowercase letters, but possibly in a different order. The order of the alphabet is some permutation of lowercase letters.
//
//Given a sequence of words written in the alien language, and the order of the alphabet, return true if and only if the given words are sorted lexicographically in this alien language.
//
//
//
//Example 1:
//
//Input: words = ["hello","leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"
//Output: true
//Explanation: As 'h' comes before 'l' in this language, then the sequence is sorted.
//Example 2:
//
//Input: words = ["word","world","row"], order = "worldabcefghijkmnpqstuvxyz"
//Output: false
//Explanation: As 'd' comes after 'l' in this language, then words[0] > words[1], hence the sequence is unsorted.
//Example 3:
//
//Input: words = ["apple","app"], order = "abcdefghijklmnopqrstuvwxyz"
//Output: false
//Explanation: The first three characters "app" match, and the second string is shorter (in size.)
//According to lexicographical rules "apple" > "app", because 'l' > '∅', where '∅' is defined as the blank character which is less than any other character (More info).
//
//
//Constraints:
//
//1 <= words.length <= 100
//1 <= words[i].length <= 20
//order.length == 26

struct AlienDictionary {

    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        guard words.count > 1 else { return true }

        let orderDictionary = order.enumerated().reduce(into: [:]) { result, char in
            result[char.element] = char.offset
        }

        var wordIndex = words.startIndex
        var mismatchFound = false
        while wordIndex < words.endIndex - 1, !mismatchFound {
            let lhs = words[wordIndex]
            let rhs = words[wordIndex + 1]

            var charIndex = lhs.startIndex

            while charIndex < min(lhs.endIndex, rhs.endIndex), !mismatchFound {
                let lhsChar = lhs[charIndex]
                let rhsChar = rhs[charIndex]

                let lhsOrder = orderDictionary[lhsChar]!
                let rhsOrder = orderDictionary[rhsChar]!

                if lhsOrder > rhsOrder {
                    mismatchFound = true
                } else if lhsOrder < rhsOrder {
                    break
                }

                charIndex = lhs.index(after: charIndex)

                guard charIndex == min(lhs.endIndex, rhs.endIndex), lhs.count > rhs.count else { continue }

                mismatchFound = true
            }

            wordIndex += 1
        }

        return !mismatchFound
    }
}

