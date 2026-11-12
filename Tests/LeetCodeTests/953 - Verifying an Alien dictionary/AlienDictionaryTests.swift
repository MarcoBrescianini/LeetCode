import Testing

@testable import LeetCode

@Suite
struct AlienDictionaryTests {

    let instance = AlienDictionary()

    @Test
    func sorted() {
        #expect(instance.isAlienSorted(["hello","leetcode"], "hlabcdefgijkmnopqrstuvwxyz"))
    }

    @Test
    func unsorted() {
        #expect(!instance.isAlienSorted(["word","world","row"], "worldabcefghijkmnpqstuvxyz"))
    }

    @Test
    func unsortedPrefixWords() {
        #expect(!instance.isAlienSorted(["apple","app"], "abcdefghijklmnopqrstuvwxyz"))
    }
}
