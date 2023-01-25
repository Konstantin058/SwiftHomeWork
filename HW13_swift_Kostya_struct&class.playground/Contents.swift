/*
 1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).
 */

struct Student {
    var name: String
    var lastname: String
    var yearOfBirth: Int
    var averageScore: Int
}

var student1 = Student(name: "Alex", lastname: "Sidorov", yearOfBirth: 2000, averageScore: 4)

var student2 = Student(name: "Elena", lastname: "Smirnova", yearOfBirth: 2001, averageScore: 5)

var student3 = Student(name: "Sergey", lastname: "Sidorov", yearOfBirth: 1999, averageScore: 3)

var student4 = Student(name: "Dmitriy", lastname: "Krylov", yearOfBirth: 2000, averageScore: 5)

var journal = [Student]()

journal.append(student1)
journal.append(student2)
journal.append(student3)
journal.append(student4)
journal

/*
 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
*/

func arrayStudents(student: [Student]) {
    
    for (index,student) in student.enumerated() {
        print("№ \(index + 1). \(student.lastname) \(student.name) was born \(student.yearOfBirth). AverageScore: \(student.averageScore)")
    }
}
arrayStudents(student: journal)

/*
 3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
*/

var averageScoreSorted = journal.sorted(by: { (student01, student02) -> Bool in return student01.averageScore > student02.averageScore })
arrayStudents(student: averageScoreSorted)

var averageScoreSorted1 = journal.sorted(by: { $0.averageScore > $1.averageScore })
arrayStudents(student: averageScoreSorted1)

/*
 4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
 */

var lastenameSorted = journal.sorted(by: { (student01, student02) -> Bool in
    if student01.lastname == student02.lastname {
        return student01.name < student02.name
    } else {
        return student01.lastname < student02.lastname
    }
})
arrayStudents(student: lastenameSorted)

/*
 5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.
*/

var changeJournal = journal

journal[0].name = "Fedor"
journal[0].lastname = "Kovolev"
journal[0].yearOfBirth = 1990
journal[0].averageScore = 4

journal[2].name = "Marina"
journal[2].lastname = "Barova"
journal[2].yearOfBirth = 2005
journal[2].averageScore = 5

arrayStudents(student: changeJournal)
arrayStudents(student: journal)

/*
 6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?
*/

class StudentClass {
    var name: String
    var lastname: String
    var yearOfBirth: Int
    var averageScore: Int
    
    init(name: String, lastname: String, yearOfBirth: Int, averageScore: Int) {
        self.name = name
        self.lastname = lastname
        self.yearOfBirth = yearOfBirth
        self.averageScore = averageScore
    }
}

var studClass1 = StudentClass(name: "Jonh", lastname: "Maers", yearOfBirth: 1985, averageScore: 3)

var studClass2 = StudentClass(name: "Billy", lastname: "Ferdio", yearOfBirth: 1987, averageScore: 4)

var studClass3 = StudentClass(name: "IceCube", lastname: "Nigerrov", yearOfBirth: 1982, averageScore: 2)

var studClass4 = StudentClass(name: "Elza", lastname: "Ferdio", yearOfBirth: 1987, averageScore: 5)

var newJournalClass = [studClass1, studClass2, studClass3, studClass4]

func newJournalFunc(student: [StudentClass]) {
    
    for (index,student) in student.enumerated() {
        print("№ \(index + 1). \(student.lastname) \(student.name) was born \(student.yearOfBirth). AverageScore: \(student.averageScore)")
    }
}
newJournalFunc(student: newJournalClass)

var averageScoreSort = newJournalClass.sorted(by: { (student01, student02) -> Bool in return student01.averageScore > student02.averageScore })
newJournalFunc(student: averageScoreSort)

var averageScoreSort1 = newJournalClass.sorted(by: { $0.averageScore > $1.averageScore })
newJournalFunc(student: averageScoreSort1)

var sortLastname = newJournalClass.sorted(by: { (student01, student02) -> Bool in
    if student01.lastname == student02.lastname {
        return student01.name < student02.name
    } else {
        return student01.lastname < student02.lastname
    } })
newJournalFunc(student: sortLastname)

var changeNewJournalClass = newJournalClass

changeNewJournalClass[0].name = "Mike"
changeNewJournalClass[0].lastname = "Sigal"
changeNewJournalClass[0].yearOfBirth = 1900
changeNewJournalClass[0].averageScore = 5

changeNewJournalClass[1].name = "Billy"
changeNewJournalClass[1].lastname = "Madisson"
changeNewJournalClass[1].yearOfBirth = 1995
changeNewJournalClass[1].averageScore = 4

newJournalFunc(student: changeNewJournalClass)
newJournalFunc(student: newJournalClass)
