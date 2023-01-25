import UIKit

/*
 1. Для нашей структуры Point перегрузить операторы: -, -=, prefix —, postfix —, /, /=, *=
 2. Создать структуру Rect, аналог CGRect, содержащую структуру Size и Point. Перегрузить операторы +, +=, -, -= для этой структуры.
 3. Перегрузить оператор + и +=(добавлять число к строке) для String, но второй аргумент должен быть Int
 4. Создать свой оператор, который будет принимать 2 String и в первом аргументе, при совпадении буквы с вторым аргументом, менять совпадения на заглавные буквы
 */

struct Point {
    var x: Int
    var y: Int
}

var p1 = Point(x: 10, y: 10)
var p2 = Point(x: 4, y: 2)

func - (a: Point, b: Point) -> Point {
    return Point(x: a.x - b.x, y: a.y - b.y)
}

func / (a: Point, b: Point) -> Point {
    return Point(x: a.x / b.x, y: a.y / b.y)
}

p1 - p2
p1 / p2

func -= (a: inout Point, b: Point) {
    a = a - b
}

p1 -= p2

func /= (a: inout Point, b: Point) {
    a = a / b
}

p1 /= p2

func * (a: Point, b: Point) -> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}

func *= (a: inout Point, b: Point) {
    a = a * b
}

p1 *= p2

/*
 2. Создать структуру Rect, аналог CGRect, содержащую структуру Size и Point. Перегрузить операторы +, +=, -, -= для этой структуры.
 */


struct Size {
    var height: Int
    var widht: Int
}

struct Rect {
    var point = Point(x: 0, y: 0)
    var size = Size(height: 0, widht: 0)
}

var rect1 = Rect(point: Point(x: 3, y: 3), size: Size(height: 4, widht: 8))
let rect2 = Rect(point: Point(x: 5, y: 5), size: Size(height: 1, widht: 5))

func + (rect1: Rect, rect2: Rect) -> Rect {
    return Rect(point: Point(x: rect1.point.x + rect2.point.x, y: rect1.point.y + rect2.point.y), size: Size(height: rect1.size.height + rect2.size.height, widht: rect1.size.widht + rect2.size.widht))
}

rect1 + rect2

func += (rect1: inout Rect, rect2: Rect) -> Rect {
    rect1 = rect1 + rect2
    
    return rect1
}

rect1 += rect2

func - (rect1: Rect, rect2: Rect) -> Rect {
    return Rect(point: Point(x: rect1.point.x - rect2.point.x, y: rect1.point.y - rect2.point.y), size: Size(height: rect1.size.height - rect2.size.height, widht: rect1.size.widht - rect2.size.widht))
}

rect1 - rect2

func -= (rect1: inout Rect, rect2: Rect) -> Rect {
    rect1 = rect1 - rect2
    
    return rect1
}

rect1 -= rect2

func * (rect1: Rect, rect2: Rect) -> Rect {
    return Rect(point: Point(x: rect1.point.x * rect2.point.x, y: rect1.point.y * rect2.point.y), size: Size(height: rect1.size.height * rect2.size.height, widht: rect1.size.widht * rect2.size.widht))
}


func / (rect1: Rect, rect2: Rect) -> Rect {
    return Rect(point: Point(x: rect1.point.x / rect2.point.x, y: rect1.point.y / rect2.point.y), size: Size(height: rect1.size.height / rect2.size.height, widht: rect1.size.widht / rect2.size.widht))
}


/*
 3. Перегрузить оператор + и +=(добавлять число к строке) для String, но второй аргумент должен быть Int
 */


var string = "Hello, World!"
var int = 585

func + (str1: inout String, str2: Int) -> String {
    str1 = str1 + String(str2)
    return str1
}

var newString = string + int

func += (str1: inout String, str2: Int) -> String {
    str1 = str1 + String(str2)
    return str1
}

string += int


/*
 4. Создать свой оператор, который будет принимать 2 String и в первом аргументе, при совпадении буквы с вторым аргументом, менять совпадения на заглавные буквы
 */


infix operator ===

func === (str1: inout String, str2: String) {
    var result = ""
    for char in str1 {
        if str2.contains(char) {
            result += char.uppercased()
        }
    }
    str1 = result
}

var mySting = "Some string literal value"
let letter = "Salute"

mySting === letter
