/*
1. Создать структуру “Описание файла” содержащую свойства:
- путь к файлу
- имя файла
- максимальный размер файла на диске
- путь к папке, содержащей этот файл
- тип файла (скрытый или нет)
- содержимое файла (можно просто симулировать контент)

Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.
 */

enum Type {
    case hidden
    case visible
}

struct FileDescription {
    
    static var maxFileSize = 250
    
    var nameFile: String
    var typeFile: Type
    var pathFile: String
    
    var path: String {
        return "\(pathFile)\(nameFile)"
    }
    
    var fileSize: Int {
        didSet {
            if fileSize > FileDescription.maxFileSize {
                fileSize = oldValue
            }
        }
    }
    lazy var content = ""
}

/*
2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.
*/

enum ColorScheme: Int {
    case red = 255
    case green = 128
    case yellow = 47
    
    static var firstColor: Int {
        return ColorScheme.red.rawValue
    }
    static var lastColor: Int {
        return ColorScheme.yellow.rawValue
    }
    static var quantityColor = 3
}

let color = ColorScheme(rawValue: 255)

/*
3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
- минимальный и максимальный возраст каждого объекта
- минимальную и максимальную длину имени и фамилии
- минимально возможный рост и вес
- самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
*/

let MaxNameLenght = 20
let MinNameLenght = 3
let MaxLastnameLenght = 25
let MinLstnameLenght = 2

class Human {
    
    var name: String {
        didSet {
            if name.count > MaxNameLenght {
                name = oldValue
            }
            if name.count < MinNameLenght {
                name = oldValue
            }
        }
    }
    
    var lastname: String {
        didSet {
            if lastname.count > MaxLastnameLenght {
                lastname = oldValue
            }
            if lastname.count < MinLstnameLenght {
                lastname = oldValue
            }
        }
    }
    
    class var maxAge: Int {
        return 100
    }
    class var minAge: Int {
        return 1
    }
    
    var age: Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
            if age < Human.minAge {
                age = oldValue
            }
        }
    }
    
    class var maxHeight: Double {
        return 250
    }
    class var minHeight: Double {
        return 30
    }
    
    var height: Double {
        didSet {
            if height > Human.maxHeight {
                height = oldValue
            }
            if height < Human.minHeight {
                height = oldValue
            }
        }
    }
    
    class var maxWeight: Double {
        return 300
    }
    class var minWeight: Double {
        return 3
    }
    
    var weight: Double {
        didSet {
            if weight > Human.maxWeight {
                weight = oldValue
            }
            if weight < Human.minWeight {
                weight = oldValue
            }
        }
    }
    
    init (name: String, lastname: String, age: Int, height: Double, weight: Double) {
        self.name = name
        self.lastname = lastname
        self.age = age
        self.height = height
        self.weight = weight
    }
    
}
let human = Human(name: "Konstantin", lastname: "Evsyukov", age: 36, height: 185, weight: 125)

