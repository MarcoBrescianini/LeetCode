import Testing

@testable import LeetCode

@Suite
struct LongestCommonPrefixTests {

    let instance: LongestCommonPrefix

    init() {
        self.instance = .init()
    }

    @Test
    func oneElement() {
        #expect(instance.longestCommonPrefix(["foo"]) == "foo")
    }

    @Test
    func severalEqualElements() {
        #expect(instance.longestCommonPrefix(["foo", "foo", "foo"]) == "foo")
    }

    @Test
    func severalElementsAllDifferent() {
        #expect(instance.longestCommonPrefix(["foo", "bar", "baz"]) == "")
    }

    @Test
    func prefixMatchingTwoChars() {
        #expect(instance.longestCommonPrefix(["flower","flow","flight"]) == "fl")
    }
}
