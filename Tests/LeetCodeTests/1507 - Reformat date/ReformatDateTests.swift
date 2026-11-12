import Testing

@testable import LeetCode

@Suite
struct ReformatDateTests {

    let instance = ReformatDate()

    @Test
    func firstExample() {
        #expect(instance.reformatDate("20th Oct 2052") == "2052-10-20")
    }

    @Test
    func secondExample() {
        #expect(instance.reformatDate("6th Jun 1933") == "1933-06-06")
    }

    @Test
    func thirdExample() {
        #expect(instance.reformatDate("26th May 1960") == "1960-05-26")
    }
}
