/*
 1. создать массив "дни в месяцах"
 12 элементов содержащих количество дней в соответствующем месяце

 используя цикл for и этот массив

 - выведите количество дней в каждом месяце (без имен месяцев)
 - используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
 - сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
 - сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)

 - для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
 */

let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for day in days {
    print("Day \(day)")
}

let mounth = ["January", "February", "March", "April", "May", "June", "Jule", "August", "September", "October", "November", "December"]

for i in 0..<mounth.count {
    print("In \(mounth[i]) - \(days[i])")
}

var mounthInDay: [(mounth: String, day: Int)] = [
    ("January", 31),
    ("February", 28),
    ("March", 31),
    ("April", 30),
    ("May", 31),
    ("June", 30),
    ("Jule", 31),
    ("August", 31),
    ("September", 30),
    ("October", 31),
    ("November", 30),
    ("December", 31)
]

for (month, day) in mounthInDay {
    print("In \(month) - \(day)")
}

for (month, day) in mounthInDay.reversed() {
    print("In \(month) - \(day)")
}

//для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года

let  daysMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

let anyDay = (month: 8, day: 5)

var sumAnyDays = 0

for i in 0..<(anyDay.month - 1) {
    sumAnyDays += daysMonth[i]
}

sumAnyDays += anyDay.day
print("Сумма до нужного значения = \(sumAnyDays)")

/*
 2. Сделайте первое задание к уроку номер 4 используя массивы:

 (создайте массив опшинал интов и посчитайте сумму)

 - в одном случае используйте optional binding
 - в другом forced unwrapping
 - а в третьем оператор ??
 */

let number1 = "5"
let number2 = "7K"
let number3 = "25"
let number4 = "18ice"
let number5 = "8"

var sum = 0

//optional

var sumNumber: [Int?] = [Int(number1), Int(number2), Int(number3), Int(number4), Int(number5)]

for optionalNumber in sumNumber {
    if let number = optionalNumber {
        sum += number
    }
}
print("Sum \(sum)")

//Force

var sumForce = 0

var sumNumberForce: [Int?] = [Int(number1), Int(number2), Int(number3), Int(number4), Int(number5)]

for forceNumber in sumNumberForce {
    if forceNumber != nil {
        sumForce += forceNumber!
    }
}
print("SumForсe \(sumForce)")

//operr ??

var sumOperator = 0

var operatorNumber: [Int?] = [Int(number1), Int(number2), Int(number3), Int(number4), Int(number5)]

for number in operatorNumber {
    sumOperator += number ?? 0
}
print("sumOperator \(sumOperator)")

/*
 3. создайте строку алфавит и пустой массив строк

 в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед
 */

let alphabet = "abcdefghijklmnopqrstuvwxyz"

var someStrings = [String]()

for letter in alphabet {
    someStrings.insert(String(letter), at: 0)
}
print(someStrings)




