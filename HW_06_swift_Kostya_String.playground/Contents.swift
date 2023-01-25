/*
 1. Выполните задание #1 урока о базовых операторах: http://vk.com/topic-58860049_31536965
 только вместо forced unwrapping и optional binding используйте оператор ??

 Когда посчитаете сумму, то представьте свое выражение в виде строки
 Например: 5 + nil + 2 + 3 + nil = 10

 но в первом случае используйте интерполяцию строк, а во втором конкатенацию
 */

import Foundation

let num1 = "12"
let num2 = "43aza"
let num3 = "5"
let num4 = "8qwe"
let num5 = "86"

var nb1 = Int(num1) ?? 0
var nb2 = Int(num2) ?? 0
var nb3 = Int(num3) ?? 0
var nb4 = Int(num4) ?? 0
var nb5 = Int(num5) ?? 0

let sum = nb1 + nb2 + nb3 + nb4 + nb5

let sumNum = ("\(nb1) + \(nb2) + \(nb3) + \(nb4) + \(nb5)")
print(sumNum)

/*
 2. Поиграйтесь с юникодом и создайте строку из 5 самых классных по вашему мнению символов,
 можно использовать составные символы. Посчитайте длину строки методом SWIFT и Obj-C
 */

let peace = "\u{270C}"
let football = "\u{26BD}"
let gamb = "\u{1F354}"
let cold = "\u{1F976}"
let tiger = "\u{1F405}"

let strUni = ("\(peace)\(football)\(gamb)\(cold)\(tiger)")
print("strUni содержит \(strUni.count)  символов")
(strUni as NSString).length
let objcLength = (strUni as NSString).length
print("содержит \(objcLength) символов в Objevtive-C")

/*
 3. Создайте строку английский алфавит, все буквы малые от a до z
 задайте константу - один из символов этого алфавита

 Используя цикл for определите под каким индексов в строке находится этот символ
 */

let alphabet = "abcdefghijklmnopqrstuvwxyz"
let letter: Character = "s"

var counter = 0

for char in alphabet {
    if char == letter {
        print(char)
        break
    }
    counter += 1
}
print(counter)






