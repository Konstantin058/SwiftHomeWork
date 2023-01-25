
/*
 1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.
 */

let text = "About a thousand years ago, people known as the Vikings were known and feared throughout Europe. The Vikings were the people of the northern part of Europe, called Scandinavia, which includes the modern countries of Denmark, Norway, and Sweden. The Vikings made their living by farming and fishing. However, by about the year 700, they began making attacks, or raids, upon towns along the coasts of Europe in order to steal the wealth of those towns. The Vikings made their attacks very quickly and without any warning. They were very cruel to the people of the towns they attacked, and they sometimes destroyed the towns by burning down the buildings. In some parts of Europe, the local kings would often fight against the Vikings. Sometimes, however, the kings would pay the Vikings in order to persuade them not to attack."

var vowels = 0
var consonants = 0
var symbol = 0
var number = 0
var indent = 0

for quantity in text {
    switch quantity {
    case "a", "e", "i", "y", "u", "o":
        vowels += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z":
        consonants += 1
    case ".", ",", "-":
        symbol += 1
    case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
        number += 1
    case " ":
        indent += 1
    default:
        break
    }
}
print("Quantity in text vowels = \(vowels), consonants = \(consonants), symbol = \(symbol), number = \(number), indent = \(indent)")

/*
 2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа
 */

let age = 25

switch age {
case 0...6:
    print("Очень маленький ребенок")
case 7...15:
    print("Школьник")
case 16...22:
    print("Студент")
case 2...59:
    print("Работа всю жизнь ХИХИХИ")
case 60...150:
    print("Заслуженный отдых!!!!!")
default: break
}

/*
 3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.
*/

let name = "Антон"
let middleName = "Дмитриевич"
let surname = "Соловьев"

switch (name, middleName, surname) {
case (name, _, _) where name.hasPrefix("А") || name.hasPrefix("О"):
    print("Обращайтесь к студенту по имени")
case (_, middleName, _) where middleName.hasPrefix("В") || middleName.hasPrefix("Д"):
    print("Обращайтесь к нему по имени и отчеству")
case (_, _, surname) where surname.hasPrefix("Е") || surname.hasPrefix("З"):
    print("Обращайтесь к нему только по фамилии")
default:
    print("Обращайтесь к нему по полному имени")
}

/*
 4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
 */

let move = (3, 2)

switch move {
case (1, 3), (1, 4), (1, 5):
    print("ранил трехпалубник")
case (3, 2):
    print("убил однопалубник")
default:
    print("мимо")
}


