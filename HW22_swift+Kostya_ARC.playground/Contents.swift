import UIKit
import Foundation

/*
 Рассмотрим такую ситуацию: есть семья - папа, мама и дети.
 Папа глава семьи, у него есть Мама, Мама контролирует детей, т.е. иерархия: Папа - Мама - Дети, Дети на одном уровне.
 Дети могут вызывать друг друга и они могут искать пути, как общаться с другими Детьми, например говорить "дай игрушку", спрашивать Маму: "Мама, дай конфетку", общаться с Папой: "Папа, купи игрушку".
 Вся эта иерархия лежит в объекте класса Семья, у которого есть методы, например распечатать всю Семью, т.е. метод вернёт массив всех членов Семьи.
 У Папы есть 3 кложера (closures) - 1. когда он обращается к Семье - распечатать всю Семью, 2. распечатать Маму, 3. распечатать всех Детей.
 Создать всю иерархию со связями. При выходе из зоны видимости все объекты должны быть уничтожены. Используем Command-Line Tool.
 */

class Family {
    
    var father: Father
    var mother: Mother
    var children: Childrens
    
    init(father: Father, mother: Mother, children: Childrens) {
        self.father = father
        self.mother = mother
        self.children = children
        
        self.father.family = self
        self.father.wife = mother
        self.mother.husband = father
        self.mother.childs = children
        self.children.mother = mother
        self.children.father = father
        
    }
    
    func printFamily() {
        print("All famaly is assembled - \(father.name), \(mother.name), \(children.name),")
    }
    
}

class Father {
    var name: String
    var wife: Mother?
    var childs: Childrens?
    weak var family: Family?
    
    init (name: String) {
        self.name = name
        print("\(name) инициализировани и создан в памяти ")
    }
    
    func byMeToys() {
        print("Купи мне игрушку пожалуйста!")
    }
    
    lazy var printFamily: () -> () =  {[unowned self] in
        self.family!.printFamily()
    }
    
    lazy var talkWithWife: () -> () = {[unowned self] in
        self.wife!.talkHusband()
    }
    
    lazy var printChilds: () -> () = {[unowned self] in
        print(self.wife!.childs!.name)
    }
    
    deinit {
        print("father \(name) go to drink beer!))")
    }
}

class Mother {
    var name: String
    weak var husband: Father?
    weak var childs: Childrens?
    
    init(name: String) {
        self.name = name
        print("\(name) инициализировани и создан в памяти ")
    }
    
    func giveMeCandy() {
        print("Give me candy, maza fucka!))))")
    }
    
    func talkHusband() {
        print("Hi my dear!")
    }
        
    deinit {
        print("Mother \(name) go to sleep")
    }
}

class Childrens {
    var name: String
    weak var father: Father?
    weak var mother: Mother?
    
    init(name: String) {
        self.name = name
        print("\(name) инициализировани и создан в памяти ")
    }
    
    func speakMam() {
        mother!.giveMeCandy()
    }
    
    func speakDad() {
        father!.byMeToys()
    }
    
    deinit {
        print("Childs \(name) go to play in PS5")
    }
}

var bigFamily = true

if bigFamily {
    let family = Family(father: Father(name: "Alex"), mother: Mother(name: "Anna"), children: Childrens(name: "Masha"))
        
    family.father.printFamily()
    family.father.talkWithWife()
    family.father.printChilds()
    family.children.speakDad()
    family.children.speakMam()
}
