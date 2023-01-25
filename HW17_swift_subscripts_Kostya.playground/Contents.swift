
/*
Шахматная доска (Легкий уровень)

1. Создайте тип шахматная доска.

2. Добавьте сабскрипт, который выдает цвет клетки по координате клетки (буква и цифра).

3. Если юзер ошибся координатами - выдавайте нил
*/

struct ChessDesk {
    
    var letters = ["A", "B", "C", "D", "E", "F", "G", "H"]
    
    subscript(coordX: String, coordY: Int) -> String? {
        
        guard letters.contains(coordX) && (1...8).contains(coordY),
              let coordXInt = letters.firstIndex(of: coordX)
        else { return nil }
        return (coordXInt + coordY ) % 2 == 0 ? "White" : "Black"
    }
}
    
var chess = ChessDesk()
chess["A", 1]
chess["A", 2]
chess["K", 12]
chess["A", 9]

/*
Крестики нолики (Средний уровень)

1. Создать тип, представляющий собой поле для игры в крестики нолики
На каждой клетке может быть только одно из значений: Пусто, Крестик, Нолик
Добавьте возможность красиво распечатывать поле

2. Добавьте сабскрипт, который устанавливает значение клетки по ряду и столбцу,
причем вы должны следить за тем, чтобы программа не падала если будет введен не существующий ряд или столбец.

3. Также следите за тем, чтобы нельзя было устанавливать крестик либо нолик туда, где они уже что-то есть. Добавьте метод очистки поля.

4. Если хотите, добавте алгоритм, который вычислит победителя
*/

enum CellField: String {
    case cross = "❌"
    case toe = "⭕️"
    case empty = "⬜️"
}

enum Player {
    case first
    case second

    var movement: CellField {
        if self == .first {
            return .cross
        } else {
            return .toe
        }
    }
}


struct TicTacToeField {
    private var currentPlayer: Player = .first
    private var state: [Int: CellField?] = [1: nil, 2: nil, 3: nil, 4: nil, 5: nil, 6: nil, 7: nil, 8: nil, 9: nil]

    mutating func show() {
        var line1 = ""
        var line2 = ""
        var line3 = ""
        
        (1...9).forEach { cell in
            switch cell {
            case 1...3:
                line1 += CellField.empty.rawValue
            case 4...6:
                line2 += CellField.empty.rawValue
            case 7...9:
                line3 += CellField.empty.rawValue
            default:
                break
            }
        }
        print(line1)
        print(line2)
        print(line3)
    }
    
    mutating func move(player: Player, to field: Int) {
        if player == currentPlayer {
            
        }
    }
}



