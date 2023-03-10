import UIKit

/*
 1. Расширьте енум из урока и добавьте в него метод, помогающий установить соответствующий бит в переданную маску и метод, помогающий его прочитать. Эти методы должны принимать и возвращать маску, либо принимать адрес маски и менять его.
 2. Создать цикл, который будет выводить 1 байтное число с одним установленным битом в такой последовательности, чтобы в консоли получилась вертикальная синусоида.
 3. Создайте 64х битное число, которое представляет клетки на шахматной доске. Установите биты так, что 0 – это белое поле, а 1 – черное. Младший бит это клетка а1 и каждый следующий байт начинается с клетки а (а2, а3, а4) и заканчивается клеткой h(h2, h3, h4). Выбирая клетки но индексу столбца и строки определите цвет клетки опираясь исключительно на значение соответствующего бита.
 */
 
/*
 1. Расширьте енум из урока и добавьте в него метод, помогающий установить соответствующий бит в переданную маску и метод, помогающий его прочитать. Эти методы должны принимать и возвращать маску, либо принимать адрес маски и менять его.
 */

extension UInt8 {
    
    func binary() -> String {
        var result = ""
        
        for i in 0..<8 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result = (set ? "1" : "0") + result
        }
        return result
    }
}

enum CheckList: UInt8 {
    case bread = 0b00000001
    case chiken = 0b00000010
    case apples = 0b00000100
    case pears = 0b00001000
    case milk = 0b00010000
    case oil = 0b00100000
    case cheese = 0b01000000
    case sausage = 0b10000000
}

extension CheckList {
    func read() {
        if self.rawValue & 0b00000001 > 0 {
            print("Setted first bit. It is \(CheckList.bread).")
        } else if self.rawValue & 0b00000010 > 0 {
            print("Setted second bit. It is \(CheckList.chiken).")
        } else if self.rawValue & 0b00000100 > 0 {
            print("Setted third bit. It is \(CheckList.apples).")
        } else if self.rawValue & 0b00001000 > 0 {
            print("Setted fourth bit. It is \(CheckList.pears).")
        } else if self.rawValue & 0b00010000 > 0 {
            print("Setted fifth bit. It is \(CheckList.milk).")
        } else if self.rawValue & 0b00100000 > 0 {
            print("Setted sixth bit. It is \(CheckList.oil).")
        } else if self.rawValue & 0b01000000 > 0 {
            print("Setted seventh bit. It is \(CheckList.cheese).")
        } else if self.rawValue & 0b10000000 > 0 {
            print("Setted eighth bit. It is \(CheckList.sausage).")
        }
    }
}
