import UIKit

/*
                                   Урок 27. Протоколы.
1. Объявить протокол Food, который будет иметь проперти name (только чтение) и метод taste(), который будет выводить текст со вкусовыми ощущениями.
2. Все продукты разных типов, которые вы принесли из супермаркета, находятся в сумке (массив) и все, как ни странно, реализуют протокол Food. Вам нужно пройтись по сумке, назвать предмет и откусить кусочек. Можете отсортировать продукты до имени. Используйте для этого отдельную функцию, которая принимает массив продуктов.
3. Некоторые продукты могут испортиться, если их не положить в холодильник. Создайте новый протокол Storable, он наследуется от протокола Food и содержит еще булевую проперти – expired. У некоторых продуктов замените Food на Storable. Теперь пройдитесь по всем продуктам и, если продукт надо хранить в холодильнике, то перенесите его туда, но только если продукт не испорчен уже, иначе просто избавьтесь от него. Используйте функцию для вывода продуктов для вывода содержимого холодильника.
4. Добавьте проперти daysToExpire в протокол Storable. Отсортируйте массив продуктов в холодильнике. Сначала пусть идут те, кто быстрее портятся. Если срок совпадает, то сортируйте по имени.
5. Не все, что мы кладем в холодильник, является едой. Поэтому сделайте так, чтобы Storable не наследовался от Food. Мы по прежнему приносим еду домой, но некоторые продукты реализуют теперь 2 протокола. Холодильник принимает только те продукты, которые еще и Storable. Функция сортировки должна по прежнему работать.
*/


protocol Food {
    var name: String { get }
    func taste()
}

protocol Storable {
    var expired: Bool { get }
    var daysToExpire: Int { get }
}

struct BagOfGroceries: Storable, Food {
    var expired: Bool
    var daysToExpire: Int
    var title: String
    
    var name: String {
        return title
    }
    
    func taste() {
        print("WOW \(title) какая вкуснятина)))")
    }
}

let milk = BagOfGroceries(expired: false, daysToExpire: 7, title: "Milk")
let cheese = BagOfGroceries(expired: false, daysToExpire: 10, title: "chease")
let sausage = BagOfGroceries(expired: false, daysToExpire: 14, title: "sausage")
let bread = BagOfGroceries(expired: false, daysToExpire: 2, title: "bread")

let juice = BagOfGroceries(expired: true, daysToExpire: 2, title: "Juice")

var food: [Food] = [milk, cheese, sausage, bread, juice]

func arrayFoods(food: inout [Food]) {
    food.sort(by: { $0.name < $1.name })
    
    for value in food {
        print(value.taste())
    }
}
arrayFoods(food: &food)

var refrigerator: [Storable & Food] = []
var trashcan: [Storable & Food] = []

func sortFood(products: [Food]) {
    for product in products {
        switch product {
        case let product as Storable & Food where product.expired == false:
            refrigerator.append(product)
        case let product as Storable & Food where product.expired == true:
            trashcan.append(product)
        default:
            break
        }
    }
}
sortFood(products: food)
refrigerator
trashcan

let sortedRefrigerator = refrigerator.sorted {
    if $0.daysToExpire == $1.daysToExpire {
        return $0.name < $1.name
    } else {
        return $0.daysToExpire < $1.daysToExpire
    }
}

sortedRefrigerator
