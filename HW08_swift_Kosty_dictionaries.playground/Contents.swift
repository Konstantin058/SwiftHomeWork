
/*
1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(

После всех этих перетрубаций посчитайте общий бал группы и средний бал
 */

var journalStudents = ["Jonh Monro": 2, "Alex Conrad": 3, "irina Lens": 3, "Leo Messi": 5, "Anna Kurnikova": 4]

journalStudents["Alex Conrad"] = 4
journalStudents["Anna Kurnikova"] = 5
journalStudents["Ice Cube"] = 5
journalStudents["Elena Sokolova"] = 4
journalStudents["Jonh Monro"] = nil
journalStudents["irina Lens"] = nil

var sum = 0
var average = 0

for (_, score) in journalStudents {
    sum += score
}
print("Sum score \(sum)")

let avaregeSum = sum / journalStudents.count
print(avaregeSum)

/*
2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
 */

let daysInMonth = ["January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "Jule": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]

for (month, day) in daysInMonth {
    print("В месяце  \(month) - \(day)")
}

for month in daysInMonth.keys {
    print("Название месяца - \(month)")
}

for days in daysInMonth.values {
    print("Дней в месяце - \(days)")
}

for month2 in daysInMonth.keys {
    print("Key = \(month2) - value = \(daysInMonth[month2]!)")
}

/*
3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.

Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).
*/

var chessBoard = [String: Bool]()

let letter = ["A", "B", "C", "D", "I", "F", "G", "H"]

for x in 1..<letter.count {
    for y in 1...8 {
        if x % 2 == y % 2 {
            chessBoard["\(letter[x]) \(y)"] = true
        } else {
            chessBoard["\(letter[x]) \(y)"] = false
        }
    }
}
print(chessBoard)

for (colorCell, numberCell) in chessBoard {
    if numberCell == true {
        print("Color CheesBoard \(colorCell) - white")
    } else {
        print("Color CheesBoard \(colorCell) - black")
    }
}



