/*
 1. Создать пять строковых констант

 Одни константы это только цифры, другие содержат еще и буквы

 Найти сумму всех этих констант приведя их к Int

 (Используйте и optional binding и forced unwrapping)
 */

import Foundation
import Darwin

let num1 = "5"
let num2 = "7K"
let num3 = "25"
let num4 = "18ice"
let num5 = "8"

var sum = 0

//optional binding

if let int1 = Int(num1) {
    sum += int1
}

if let int2 = Int(num2) {
    sum += int2
}

if let int3 = Int(num3) {
    sum += int3
}

if let int4 = Int(num4) {
    sum += int4
}

if let int5 = Int(num5) {
    sum += int5
}

print("sum \(sum)")

//Force Unwrapp

var sumForce = 0

let int1 = Int(num1)
if int1 != nil {
    sumForce += int1!
}

let int2 = Int(num2)
if int2 != nil {
    sumForce += int2!
}

let int3 = Int(num3)
if int3 != nil {
    sumForce += int3!
}

let int4 = Int(num4)
if int4 != nil {
    sumForce += int4!
}

let int5 = Int(num5)
if int5 != nil {
    sumForce += int5!
}

print("sumForce \(sumForce)")

/*
 2. С сервера к нам приходит тюпл с тремя параметрами:

 statusCode, message, errorMessage (число, строка и строка)

 в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле

 если statusCode от 200 до 300 исключительно, то выводите message,

 в противном случает выводите errorMessage

 После этого проделайте тоже самое только без участия statusCode

 */

var response : (statusCode: Int, message: String?, errorMessage: String?)

response.statusCode = 250
response.message = "All Good!!!"
response.errorMessage = "Oh noooo!!!"

/*if response.statusCode >= 200 && response.statusCode <= 300 {
    print(response.message)
} else {
    print(response.errorMessage)
}
 
 Неверный код
 */

if (200...300).contains(response.statusCode) {
    if let message = response.message {
        print(message)
    } else {
        print("Сообщение не пришло")
    }
} else {
    if let error = response.errorMessage {
        print(error)
    } else {
        print("Неизвестная ошибка")
    }
}


var response2 : (message: String?, errorMessage: String?)

response2.message = "Good"
response2.errorMessage = "Error"

/*
if response2.message != nil {
    print(response2.message)
} else {
    print(response2.errorMessage)
}
*/

if response2.message != nil {
    if let message = response2.message {
        print(message)
    }
} else if response2.errorMessage != nil {
    if let error = response2.errorMessage {
        print(error)
    }
}

/*
 3. Создайте 5 тюплов с тремя параметрами:

 имя, номер машины, оценка за контрольную

 при создании этих тюплов не должно быть никаких данных

 после создания каждому студенту установите имя

 некоторым установите номер машины

 некоторым установите результат контрольной

 выведите в консоль:

 - имена студента
 - есть ли у него машина
 - если да, то какой номер
 - был ли на контрольной
 - если да, то какая оценка
 */


var student1 : (name: String?, numCar: String?, assessment: Int?)
var student2 : (name: String?, numCar: String?, assessment: Int?)
var student3 : (name: String?, numCar: String?, assessment: Int?)
var student4 : (name: String?, numCar: String?, assessment: Int?)
var student5 : (name: String?, numCar: String?, assessment: Int?)


student1.name = "Jonh"
student2.name = "Sveta"
student3.name = "Mike"
student4.name = "Klaus"
student5.name = "Elena"

student1.numCar = "A111AA123"
student3.numCar = "O777OO23"

student2.assessment = 5
student4.assessment = 4
student5.assessment = 5

if let name = student1.name {
    print("Student1 name is \(name)")
} else {
    print("Student 1 no name")
}

if let carNumber = student1.numCar {
    print("Sudent1 car number is \(carNumber)")
} else {
    print("No car!")
}

if student1.assessment != nil {
    print(student1.assessment!)
} else {
    print("No Score!!!")
}

if let name = student2.name {
    print("Student2 name is \(name)")
} else {
    print("Student2 no name")
}

if let carNumber = student2.numCar {
    print("Sudent2 car number is \(carNumber)")
} else {
    print("No car!")
}

if student2.assessment != nil {
    print(student2.assessment!)
} else {
    print("No Score!!!")
}

if let carNumber = student3.numCar {
    print("Student car number is \(carNumber)")
} else {
    print("No car!")
}

if student3.assessment != nil {
    print(student3.assessment!)
} else {
    print("No Score!!!")
}

if let carNumber = student4.numCar {
    print("Sudent4 car number is \(carNumber)")
} else {
    print("No car!")
}

if student4.assessment != nil {
    print(student4.assessment!)
} else {
    print("No Score!!!")
}

if let carNumber = student5.numCar {
    print("Student5 car number is \(carNumber)")
} else {
    print("No car!")
}

if student5.assessment != nil {
    print(student5.assessment!)
} else {
    print("No Score!!!")
}





































