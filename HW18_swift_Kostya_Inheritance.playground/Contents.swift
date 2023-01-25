/*
1. У нас есть базовый клас "Артист" и у него есть имя и фамилия. И есть метод "Выступление". У каждого артиста должно быть свое выступление: танцор танцует, певец поет и тд. А для художника, что бы вы не пытались ставить, пусть он ставит что-то свое (пусть меняет имя на свое артистическое). Когда вызываем метод "выступление" показать в консоле имя и фамилию артиста и собственно само выступление.
Полиморфизм используем для артистов. Положить их всех в массив, пройтись по нему и вызвать их метод "выступление"
*/

class Artist {
    var firstName = ""
    var lastName = ""
    var show = ""
    
    func Perfomance() -> String {
        return firstName + " " + lastName + " " + show
    }
}

class Dancer: Artist { } //Можно так делать? Чтобы места меньше занимало))

class Singer: Artist { }

class Painter: Artist {
    override var show: String {
        set {
            super.show = newValue + " and tells stories"
        }
        get {
            return super.show
        }
    }
}

let dancer = Dancer()
dancer.firstName = "Aj"
dancer.lastName = "Style"
dancer.show = "Dance"
dancer.Perfomance()

let singer = Singer()
singer.firstName = "Tupac"
singer.lastName = "Shackur"
singer.show = "Rapping"
singer.Perfomance()

let painter = Painter()
painter.firstName = "Leonardo"
painter.lastName = "Da Vinchi"
painter.show = "paint"
painter.Perfomance()

let troupe = [dancer, singer, painter]

for showTime in troupe {
    print(showTime.Perfomance())
}

/*
2. Создать базовый клас "транспортное средство" и добавить три разных проперти: скорость, вместимость и стоимость одной перевозки (computed). Создайте несколько дочерних класов и переопределите их компютед проперти у всех. Создайте класс самолет, корабль, вертолет, машина и у каждого по одному объекту. В компютед пропертис каждого класса напишите свои значения скорости, вместимости, стоимости перевозки. + у вас должен быть свой метод который считает сколько уйдет денег и времени что бы перевести из пункта А в пункт В определенное количество людей с использованимем наших транспортных средств. Вывести в кольсоль результат (как быстро сможем перевести, стоимость, количество перевозок).
Используем полиморфизм
*/

let distance = 3700

class Transport {
    var title: String {
        return ""
    }
    var speed: Int {
        return 0
    }
    var capacity: Int {
        return 0
    }
    var cost: Int {
        return 0
    }
    
    func costOfTransportation(distance: Int, quantityPeople: Int) -> Int {
        return quantityPeople * cost
    }
    
    func timeOfTransportation(distance: Int, people: Int) -> Int {
        return distance / speed
    }
}

class Bus: Transport {
    override var title: String {
        return "Bus"
    }
    override var speed: Int {
        return 90
    }
    override var capacity: Int {
        return 40
    }
    override var cost: Int {
        return 250
    }
}

class Ship: Transport {
    override var title: String {
        return "Ship"
    }
    override var speed: Int {
        return 150
    }
    override var capacity: Int {
        return 150
    }
    override var cost: Int {
        return 1500
    }
}

class Train: Transport {
    override var title: String {
        return "Train"
    }
    override var speed: Int {
        return 120
    }
    override var capacity: Int {
        return 500
    }
    override var cost: Int {
        return 2100
    }
}

class Airbus: Transport {
    override var title: String {
        return "Airbus"
    }
    override var speed: Int {
        return 400
    }
    override var capacity: Int {
        return 170
    }
    override var cost: Int {
        return 3000
    }
}

let bus = Bus()
let ship = Ship()
let airbus = Airbus()
let train = Train()

let arrayTranporter = [bus, ship, airbus, train]

for transport in arrayTranporter {
    print("\(transport.title) потребуется времени равной \(transport.timeOfTransportation(distance: distance, people: 8)) часов и денег \(transport.costOfTransportation(distance: distance, quantityPeople: 35)) рублей")
}

/*
3. Есть 5 классов: люди, крокодилы, обезьяны, собаки, жирафы. (в этом задании вы будете создавать не дочерние классы, а родительские и ваша задача создать родительский таким образом, что бы группировать эти 5).
- Создайте по пару объектов каждого класса.
- Посчитайте присмыкающихся (создайте масив, поместите туда присмыкающихся и скажите сколько в нем объектов)
- Сколько четвероногих?
- Сколько здесь животных?
- Сколько живых существ?
*/

class LivingCreatures {
    var alive: Bool
    var animal: Bool
    var reptalies: Bool
    var amountOfLegs: Int
    
    init(amountOfLegs: Int, alive: Bool, reptalies: Bool, animal: Bool) {
        self.amountOfLegs = amountOfLegs
        self.alive = alive
        self.reptalies = reptalies
        self.animal = animal
    }
}

class Human: LivingCreatures { }

class Crocodile: LivingCreatures { }

class Dog: LivingCreatures { }

class Monkey: LivingCreatures { }

class Giraffe: LivingCreatures { }

let human1 = Human(amountOfLegs: 2, alive: true, reptalies: false, animal: false)
let human2 = Human(amountOfLegs: 2, alive: true, reptalies: false, animal: false)

let crcodile1 = Crocodile(amountOfLegs: 4, alive: true, reptalies: true, animal: false)
let crcodile2 = Crocodile(amountOfLegs: 4, alive: true, reptalies: true, animal: false)

let dog1 = Dog(amountOfLegs: 4, alive: true, reptalies: false, animal: true)
let dog2 = Dog(amountOfLegs: 4, alive: true, reptalies: false, animal: true)

let monkey1 = Monkey(amountOfLegs: 2, alive: true, reptalies: false, animal: true)
let monkey2 = Monkey(amountOfLegs: 2, alive: true, reptalies: false, animal: true)

let giraffe1 = Giraffe(amountOfLegs: 4, alive: true, reptalies: false, animal: true)
let giraffe2 = Giraffe(amountOfLegs: 4, alive: true, reptalies: false, animal: true)

var livingCreatures = [human1, human2, crcodile1, crcodile2, dog1, dog2, monkey1, monkey2, giraffe1, giraffe2] as [LivingCreatures]
print("Living beings in quantitative \(livingCreatures.count)")

var animal = [LivingCreatures]()
var reptalies = [LivingCreatures]()
var quadrupeds = [LivingCreatures]()

for value in livingCreatures {
    if value.animal == true { animal.append(value) }
    if value.reptalies == true { reptalies.append(value) }
    if value.amountOfLegs == 4 { quadrupeds.append(value) }
}

print("Among living of creatures \(animal.count)")
print("Among living of creatures \(reptalies.count)")
print("Among living of creatures \(quadrupeds.count)")
