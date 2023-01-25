import Foundation

/*
1. Повторить код Алексея из урока по памяти.
2. Для этого же студента добавить свойства:
-дата рождения (используя другую структуру)
-возраст (вычисляется на основании даты рождения)
-количество лет учебы (начиная с 6 лет, либо 0 если возраст меньше чем 6)
 */

struct Student {
    
    var firstName: String {
        
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
            
            firstName = firstName.capitalized
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            print("fullName wants to be set to " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words .count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
    
    var dayOfBirth: Int {
        didSet {
            dayOfBirth = 0
        }
    }
    var mounthOfBirth: Int {
        didSet {
            mounthOfBirth = 0
        }
    }
    var yearOfBirth: Int {
        didSet {
            yearOfBirth = 0
        }
    }
    
    var age: Int {
        
        let calendar = Calendar.current
        let dateOfBirth = DateComponents(calendar: calendar, year: yearOfBirth, month: mounthOfBirth, day: dayOfBirth)
        let componentsFromCurrentDays = calendar.dateComponents([.year, .month, .day], from: Date())
        let ageComponents = calendar.dateComponents([.year], from: dateOfBirth, to: componentsFromCurrentDays)
        return ageComponents.year ?? 0
    }
    
    var yearsOfStudy: Int {
        if age <= 6 {
            return 0
        }
        return age - 6
    }
}

var student = Student(firstName: "Konstantin", lastName: "Evsyukov", dayOfBirth: 5, mounthOfBirth: 10, yearOfBirth: 1985)

student.fullName
student.age
student.yearsOfStudy

/*
3. Создать структуру "отрезок", у которой два свойства - точка "А" и точка "В", которые в свою очередь тоже структуры (не стандартные, а наши собственные)
Также отрезок имеет вычисляемые свойства (они изменяют точки "А" и "В", если мы изменяем следующие свойства):
-midPoint - середина отрезка (при её изменении, отрезок смещается на параллельную прямую, проходящую через наш midPoint?)
-длина отрезка (при изменении, точка "А" остается, а точка "В" движется)
*/

struct Point {
    var x: Double
    var y: Double
}

struct Line {
    var pointA: Point
    var pointB: Point
    
    var middle: Point {
        let difX = abs(pointA.x - pointB.x)
        let midX =  min(pointA.x, pointB.x) + difX / 2
        
        let difY = abs(pointA.y - pointB.y)
        let midY =  min(pointA.y, pointB.y) + difY / 2
        
        return Point(x: midX, y: midY)
    }

var lenthOfLine: Double {
    let cathetus1 = pointB.x - pointA.x
    let cathetus2 = pointB.y - pointA.y
    let sumOfSquaredCathetus = (cathetus1 * cathetus1) + (cathetus2 * cathetus2)
    let hypotenuse = sumOfSquaredCathetus.squareRoot()

    return hypotenuse
    }
}

var line = Line(pointA: Point(x: 11.2, y: 11.2), pointB: Point(x: 2.5, y: 2.5))

line.pointA
line.pointB

