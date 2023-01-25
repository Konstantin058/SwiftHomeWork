
/*
 1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)
 */

let oneMinute = 60
let oneHour = 60
let oneDay = 24

let myDayBirth = 5
let jan = 31
let feb = 28
let mar = 31
let apr = 30
let may = 31
let jun = 30
let jul = 31
let aug = 31
let sep = 30

var sumMounth = ((jan + feb + mar + apr + may + jun + jul + aug + sep) + 5)

let hour = sumMounth * oneDay
let min = hour * oneHour
let sec = min * oneMinute

print("SecondMyBirth \(sec)")

/*
 2. Посчитайте в каком квартале вы родились
 */

let myBirthOfMounth = 10

if myBirthOfMounth >= 1 && myBirthOfMounth <= 3 {
    print("I was born in 1 quarter")
} else if myBirthOfMounth >= 4 && myBirthOfMounth <= 6 {
    print("I was born in 2 quarter")
} else if myBirthOfMounth >= 7 && myBirthOfMounth <= 9 {
    print("I was born in 3 quarter")
} else if  myBirthOfMounth >= 10 && myBirthOfMounth <= 12 {
    print("I was born in 4 quarter")
}

/*
 3. Создайте пять переменных типа Инт и добавьте их в выражения со сложением, вычитанием, умножением и делением. В этих выражениях каждая из переменных должна иметь при себе унарный постфиксный или префиксный оператор. Переменные могут повторяться.

 Убедитесь что ваши вычисления в голове или на бумаге совпадают с ответом. Обратите внимание на приоритет операций
 */

var a = 53
var b = 12
var c = 5
var d = 41
var e = 10

let sumInt = ((a + b) / (c - d)) * e
print("Sum \(sumInt)")

a += 20
b -= 7

/*
 4. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h
 */

let chessBoard = (x: 9, y: 12)

if (chessBoard.x % 2 != chessBoard.y % 2) {
    print("ChessBoard \("White")")
} else {
    print("ChessBoard \("Black")")
}






