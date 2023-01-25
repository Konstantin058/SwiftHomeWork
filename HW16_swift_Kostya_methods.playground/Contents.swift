/*
1. Создайте тип Комната. У комнаты есть размеры W на H. И создайте тип Персонаж. У него есть координата в комнате X и Y. Реализуйте функцию, которая красивенько текстом будет показывать положение персонажа в комнате
 */
/*
2. Персонажу добавьте метод идти, который принимает энумчик лево, право, верх, вниз
Этот метод должен передвигать персонажа. Реализуйте правило что персонаж не должен покинуть пределы комнаты. Подвигайте персонажа и покажите это графически
 */

import Darwin

enum Direction {
    case left
    case right
    case up
    case down
}

struct Hero {
    var x: Int {
        didSet {
            if x < Room.height || x > 4 {
               x = oldValue
            }
        }
    }
    var y: Int {
        didSet {
            if y < Room.width || y > 4 {
                y = oldValue
            }
        }
    }
}

struct Box {
    var x: Int {
        didSet {
            if x < Room.height || x > 4 {
                x = oldValue
            }
        }
    }
    var y: Int {
        didSet {
            if y < Room.width || y > 4 {
                y = oldValue
            }
        }
    }
}

struct Room {
   static var width = 4
   static var height = 4
    var hero: Hero
    var box: Box
    
    func printMe() {
        for x in 1...Room.width {
            var line = ""
            for y in 1...Room.height {
                let cell = hero.x == x && hero.y == y ? "😁" : "◽️"
                line = "\(line)\(cell)"
            }
            print(line)
        }
        
        if hero.x == box.x && hero.y == box.y {
            
        }
        
    }
    
    mutating func move(direction: Direction) {
        switch direction {
        case .left:
            hero.y -= 1
        case .right:
            hero.y += 1
        case .up:
            hero.x -= 1
        case .down:
            hero.x += 1
        }
    }
}
let hero = Hero(x: 3, y: 1)
let box = Box(x: 4, y: 1)
var room = Room(hero: hero, box: box)
room.printMe()
room.move(direction: .down)
print("go")
room.printMe()
print("go")
room.move(direction: .right)
room.printMe()
 


