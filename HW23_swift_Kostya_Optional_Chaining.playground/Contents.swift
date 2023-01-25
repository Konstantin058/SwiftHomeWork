/*
 Урок 23 Optional chaining и Type casting
 Сегодня будем строить свою небольшую социальную сеть.
 Сделать класс Человек, у этого класса будут проперти Папа, Мама, Братья, Сестры (массивы) (всё опционально).
 Сделать примерно 30 человек, взять одного из них, поставить ему Папу/Маму. Папе и Маме поставить Пап/Мам/Братьев/Сестер. Получится большое дерево иерархии.
 Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, итд (Optional chaining)
Все сестры, матери,… должны быть класса Женщина, Папы, братья,… класса Мужчины.
 У Мужчин сделать метод Двигать_диван, у Женщин Дать_указание (двигать_диван). Всё должно работать как и ранее.
 Всех этих людей положить в массив Семья, пройти по массиву посчитать количество Мужчин и Женщин, для каждого Мужчины вызвать метод Двигать_диван, для каждой женщины Дать_указание.
Расширить класс человек, у него будет проперти Домашние_животные. Животные могут быть разные (попугаи, кошки, собаки…) их может быть несколько, может и не быть вообще.
 Раздать некоторым людям домашних животных. Пройти по всему массиву людей. Проверить каждого человека на наличие питомца, если такой есть – добавлять всех животных в массив животных. Посчитать сколько каких животных в этом массиве.
 Вся эта живность должна быть унаследована от класса Животные. У всех животных должен быть метод Издать_звук(крик) и у каждого дочернего класса этот метод переопределён на свой, т.е. каждое животное издаёт свой звук.
 Когда проходим по массиву животных, каждый представитель вида животных должен издать свой звук.
 Обязательно используем в заданиях Optional chaining и Type casting.
 */

class Human {
    
    let name: String
    var father: Man?
    var mother: Women?
    var son: Man?
    var doughter: Women?
    var grandFather: Man?
    var grandMother: Women?
    var brothers: [Man]? = []
    var sisters: [Women]? = []
    var pets: [Animal]? = []

    init(name: String) {
        self.name = name
    }
}

class Man: Human {
    
    func moveTheSofa() { print("Пойду передыину дивани и выпью на нем пивко за футболом))") }
}

class Women: Human {
    
    func giveInstructions() { print("Передвинь пожалуйста диван и смотри футбол)") }
}

class Animal {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {}
}

class Dog: Animal {
    
    override func makeSound() {
        print("Гав гав гав")
    }
    
}

class Cat: Animal {
    
    override func makeSound() {
        print("Мяяяуууууу")
    }
    
}

class Parrot: Animal {
    
    override func makeSound() {
        print("Чик чирик")
    }
}

var familyTree = true

if familyTree {
    let father = Man(name: "Konstantin")
    let mother = Women(name: "Elena")
    let son = Man(name: "Alexander")
    let doughter = Women(name: "Maria")
    let brother1OfFather = Man(name: "Anton")
    let brother2OfFather = Man(name: "Alex")
    let sisterOfFather = Women(name: "Irina")
    let sister1OfMother = Women(name: "Svetlana")
    let sister2OfMother = Women(name: "Dariy")
    let brotherOfMother = Man(name: "Denis")
    
    let grandFather = Man(name: "Alexander")
    let grandMother = Women(name: "Alena")
    
    let cousin1 = Man(name: "Alex")
    let cousin2 = Man(name: "Sergey")
    let cousin3 = Man(name: "Dmitriy")
    let cousin4 = Man(name: "Nikolay")
    let cousin5 = Women(name: "Elena")
    let cousin6 = Women(name: "Vlada")
    let cousin7 = Women(name: "Anna")
    let cousin8 = Women(name: "Veronika")
    
    son.father = father
    son.mother = mother
    son.grandFather = grandFather
    son.grandMother = grandMother
    doughter.father = father
    doughter.mother = mother
    doughter.grandMother = grandMother
    doughter.grandFather = grandFather
    father.grandFather = father
    father.grandMother = mother
    mother.grandFather = father
    mother.grandMother = mother
    father.brothers = [brother1OfFather, brother2OfFather]
    father.sisters = [sisterOfFather]
    mother.brothers = [brotherOfMother]
    mother.sisters = [sister1OfMother, sister2OfMother]
    brother1OfFather.son = cousin1
    brother1OfFather.son = cousin2
    brother2OfFather.son = cousin3
    brother2OfFather.son = cousin4
    sisterOfFather.doughter = cousin5
    sister2OfMother.doughter = cousin6
    brotherOfMother.doughter = cousin7
    brotherOfMother.doughter = cousin8
    
    let allFamaly = [father, mother, son, doughter, brother1OfFather, brother2OfFather, brotherOfMother, sisterOfFather, sister1OfMother, sister2OfMother, grandFather, grandMother, cousin1, cousin2, cousin3, cousin8, cousin7, cousin6, cousin5, cousin4]
    
    print("В нашем родовом древе, находится \(allFamaly.count) человек")
    
    var amountOfUncle = 0
    var amountOfAunt = 0
    var amountOfMan = 0
    var amountOfWomen = 0
    
    allFamaly
        .filter { $0.brothers?.count != nil }
        .forEach { amountOfUncle += ($0.brothers?.count)! }

    allFamaly
        .filter { $0.sisters?.count != nil }
        .forEach { amountOfAunt += ($0.sisters?.count)! }
    
    allFamaly
        .forEach { relative in
            if let man = relative as? Man {
                man.moveTheSofa()
                amountOfMan += 1
            } else if let women = relative as? Women {
                women.giveInstructions()
                amountOfWomen += 1
            }
        }
    
    print("Общее количество мужчин равно \(amountOfMan), общее количество женщин равно \(amountOfWomen), у нас к оличество дядек \(amountOfUncle) и количество тетушек \(amountOfAunt)")
    
    father.pets = [Cat(name: "Рыжик")]
    mother.pets = [Dog(name: "Bob")]
    son.pets = [Dog(name: "Jack")]
    doughter.pets = [Parrot(name: "Kesha")]
    brotherOfMother.pets  = [Cat(name: "Kity"), Dog(name: "Pirat")]
    sister2OfMother.pets = [Cat(name: "Mily"), Cat(name: "Loc"), Dog(name: "Vince")]
    
    var animals = [Animal]()
    
    allFamaly
        .forEach { human in
            guard let pets = human.pets else { return }
            animals += pets
        }
    
    var dogsCount = 0
    var catsCount = 0
    var parrotsCount = 0

    animals.forEach { animal in
            if let cat = animal as? Cat {
                cat.makeSound()
                catsCount += 1
            } else if let dog = animal as? Dog {
                dog.makeSound()
                dogsCount += 1
            } else if let parrot = animal as? Parrot {
                parrot.makeSound()
                parrotsCount += 1
            }
        }
    
    print("Количество собак равна \(dogsCount), количество кошек и котиков равна \(catsCount), и количество попугаев равна \(parrotsCount), общее количество питомцев у людей равняется \(animals.count)")
}
