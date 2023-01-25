
/*
1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.
*/
func gates() -> String {
    return "\u{1F945}"
}

func goalkeeper() -> String {
    return "\u{1F9CD}"
}

func ball() -> String {
    return "\u{26BD}"
}

func man() -> String {
    return "\u{1F3C3}"
}

func goal() -> String {
    return "\u{1F973}"
}
print("Goooaaaal \(gates()) + \(goalkeeper()) + \(ball()) + \(man()) + \(goal())")

/*
2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль
 */
  
func colorCell(with x: String, y: Int) -> String? {
    guard x.count == 1 else { return nil }
    
    let letters = "abcdefgh"
    let xChar = Character(x)
    
    guard letters.contains(xChar), (1...8).contains(y) else { return nil }
    guard let indexX = letters.firstIndex(of: xChar) else { return nil }
    let indexIntX = letters.distance(from: letters.startIndex, to: indexX) + 1
    
    return ((indexIntX + y) % 2) == 0 ? "white" : "black"
}
colorCell(with: "a", y: 4)

/*
3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.
 */

var array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func revers(array1: [Int]) -> [Int] {
    var bufer = [Int]()
    
    for value in array1.reversed() {
        bufer += [value]
    }
    return bufer
}

var bufer = revers(array1: array)
print(bufer)

func reverse(sequense: Int...) -> [Int] {
    let arrayTemp = Array(sequense)
    return revers(array1: arrayTemp)
}
reverse(sequense: 1, 3, 5, 6, 8)

 /*
4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?
  */

var array2 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func changeArray(numbers: inout [Int]) {
    
    numbers = numbers.map { number in
        return number * 10
    }
    
}
changeArray(numbers: &array2)
print(array2)

func changeArray2(numbers: inout [Int]) {
    var result = 0
    
    for number in numbers {
        result *= number
    }
}
changeArray2(numbers: &array2)
print(array2)

/*
5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
*/

var superText = "About a thousand years ago, people known as the Vikings were known and feared throughout Europe. The Vikings were the people of the northern part of Europe, called Scandinavia, which includes the modern countries of Denmark, Norway, and Sweden. The Vikings made their living by farming and fishing. However, by about the year 700, they began making attacks, or raids, upon towns along the coasts of Europe in order to steal the wealth of those towns. The Vikings made their attacks very quickly and without any warning. They were very cruel to the people of the towns they attacked, and they sometimes destroyed the towns by burning down the buildings. In some parts of Europe, the local kings would often fight against the Vikings. Sometimes, however, the kings would pay the Vikings in order to persuade them not to attack."

func changeText(text: String) -> String {
    let vowels = "aeiouy"
    let consonants = "qwrtpsdfghjklzxcvbnm"
    let symbol = ",.!?-"
    
    return text
        .reduce(into: "") { result, char in
            if vowels.contains(char) {
                result += char.uppercased()
            } else if consonants.contains(char) {
                result += char.lowercased()
            } else if symbol.contains(char) {
                result += " "
            }
            
        }
}
changeText(text: superText)
print(superText)

func transform(_ digit: Int) -> String {
    let digits = [
        1: "One",
        2: "Two",
        3: "Three",
        4: "Four",
        5: "Five",
        6: "Six",
        7: "Seven",
        8: "Eight",
        9: "Nine",
        0: "Zero"
    ]
    return digits[digit] ?? ""
}
transform(3)
print(transform(5))
