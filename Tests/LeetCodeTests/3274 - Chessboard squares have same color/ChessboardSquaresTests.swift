import Testing

@testable import LeetCode

@Suite
struct ChessboardSquaresTests {

    let instance: ChessboardSquares

    init() {
        self.instance = .init()
    }

    @Test
    func sameCoordinates() {
        #expect(instance.checkTwoChessboards("a1", "a1"))
    }

    @Test
    func sameColor() {
        #expect(instance.checkTwoChessboards("a1", "c3"))
        #expect(instance.checkTwoChessboards("c3", "a1"))
    }

    @Test
    func differentColor() {
        #expect(!instance.checkTwoChessboards("a1", "h3"))
        #expect(!instance.checkTwoChessboards("h3", "a1"))
    }
}
