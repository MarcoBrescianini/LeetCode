import Foundation

//You are given an 8 x 8 matrix representing a chessboard. There is exactly one white rook represented by 'R', some number of white bishops 'B', and some number of black pawns 'p'. Empty squares are represented by '.'.
//
//A rook can move any number of squares horizontally or vertically (up, down, left, right) until it reaches another piece or the edge of the board. A rook is attacking a pawn if it can move to the pawn's square in one move.
//
//Note: A rook cannot move through other pieces, such as bishops or pawns. This means a rook cannot attack a pawn if there is another piece blocking the path.
//
//Return the number of pawns the white rook is attacking.
//
//Example 1:
//
//
//Input: board = [[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","R",".",".",".","p"],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]
//
//Output: 3
//
//Explanation:
//
//In this example, the rook is attacking all the pawns.
//
//Example 2:
//
//
//Input: board = [[".",".",".",".",".",".","."],[".","p","p","p","p","p",".","."],[".","p","p","B","p","p",".","."],[".","p","B","R","B","p",".","."],[".","p","p","B","p","p",".","."],[".","p","p","p","p","p",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]
//
//Output: 0
//
//Explanation:
//
//The bishops are blocking the rook from attacking any of the pawns.
//
//Example 3:
//
//
//Input: board = [[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","p",".",".",".","."],["p","p",".","R",".","p","B","."],[".",".",".",".",".",".",".","."],[".",".",".","B",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."]]
//
//Output: 3
//
//Explanation:
//
//The rook is attacking the pawns at positions b5, d6, and f5.
//
//
//
//Constraints:
//
//board.length == 8
//board[i].length == 8
//board[i][j] is either 'R', '.', 'B', or 'p'
//There is exactly one cell with board[i][j] == 'R'
//

struct RookCaptures {

    func numRookCaptures(_ board: [[Character]]) -> Int {
        var captures = 0

        for row in 0 ..< 8 {
            for column in 0 ..< 8 {
                guard board[row][column] == "R" else { continue }

                let directions = [(1, 0), (0, 1), (-1, 0), (0, -1)]

                for direction in directions {
                    for index in 1 ..< 8 {
                        let cellRow = row + (direction.0) * index
                        let cellColumn = column + (direction.1) * index

                        guard (0 ..< 8).contains(cellRow) else { break }
                        guard (0 ..< 8).contains(cellColumn) else { break }

                        let attackableCell = board[cellRow][cellColumn]

                        if attackableCell == "B" {
                            break
                        } else if attackableCell == "p" {
                            captures += 1
                            break
                        }
                    }
                }

                break
            }
        }

        return captures
    }
}
