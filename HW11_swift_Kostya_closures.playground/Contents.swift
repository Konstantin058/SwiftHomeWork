/*
1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.
*/

func value(numbers: () -> Void) {
    for number in 1...10 {
        print(number)
    }
    numbers()
}

value {
    print("Интересно, я сделал то что он хочет?)))")
}

/*
2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
*/

let array = [2, 4, 1, 7, 9, 12, 33, 27, 5, 11]

let arrayInAscending = array.sorted(by: { number1, number2 in return number1 > number2 })
print(arrayInAscending)
let arrayInAscending2 = array.sorted(by: { $0 > $1 })
print(arrayInAscending2)
let arrayInDescendig = array.sorted(by: { number1, number2 in return number1 < number2 })
print(arrayInDescendig)
let arrayInDescendig2 = array.sorted(by: { $0 < $1 })
print(arrayInDescendig2)
let arrayInDescendig3 = array.sorted(by: <)
print(arrayInDescendig3)

/*
3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.

используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
*/

let numbers = [3, 5, 34, 55, 22, 6, 9, 10, 12, 23, 546, 43, 95, 87, 44, 59]

func arbitaryFunc(array: [Int], closure: (Int?, Int) -> Bool) -> Int {
    
    var optionalElement: Int?
    
    for value in array {
        if closure (optionalElement, value) {
            optionalElement = value
        }
    }
    return optionalElement ?? 0
}

let minElement = arbitaryFunc(array: numbers) { $0 == nil || $0 ?? 0 > $1 }
print(minElement)

let maxElement = arbitaryFunc(array: numbers) { $0 == nil || $0 ?? 0 < $1 }
print(maxElement)

/*
4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
*/

let arbitaryString = "weqkwsnalfnuqquwahsddruroqpapc,apscxkcxkqdnvxbeteaaaddkfpowpic82e63539128343791824781727,,,..--:;;:::?!sdyqire"

let char = Array(arbitaryString)

func chengeText(transform: [Character]) -> [Character] {
    
    var vowels: [Character] = []
    var consonants: [Character] = []
    var symbol: [Character] = []
    var number: [Character] = []
    
    for letter in transform {
        switch letter {
        case "a", "e", "i", "y", "u", "o":
            vowels += [letter]
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z":
            consonants += [letter]
        case ".", ",", "-", "!", "?", ":", ";":
            symbol += [letter]
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            number += [letter]
        default:
            break
        }
    }
    return vowels.sorted() + consonants.sorted() + symbol.sorted() + number.sorted()
}

let sorted = chengeText(transform: char)
print(sorted)

/*
5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
*/

let string = "sdwlqjkabdjqqwiipdfidgjkfgipiwbjskaa;osfjdfljsancx n sdjkajfbksfbhvbkvk"

let chars = Array(string)

func minMaxLetter(array: [Character], closure: (Character?, Character) -> Bool) -> Character {
    
    var optionalChar: Character?
    
    for value in array {
        if closure (optionalChar, value) {
            optionalChar = value
        }
    }
    return optionalChar ?? " "
}

let minLetter = minMaxLetter(array: chars) { $0 == nil || $0! > $1 }
print(minLetter)
let maxLetter = minMaxLetter(array: chars) { $0 == nil || $0! < $1  }


