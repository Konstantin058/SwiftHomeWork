
/*
 1. Создайте расширение для Int с пропертисами isNegative, isPositive, bool

 2. Добавьте проперти, которое возвращает количество символов в числе

 3. Добавьте сабскрипт, который возвращает символ числа по индексу:

 let a = 8245

 a[1] // 4
 a[3] // 8

 Профи могут определить и сеттер :)

 4. Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его

 5. Добавить стрингу метод truncate, чтобы отрезал лишние символы и , если таковые были, заменял их на троеточие:

 let s = "Hi hi hi"

 s.truncate(4) // Hi h...

 s.truncate(10) // Hi hi hi

 */

extension Int {
   
    var isPositive: Bool {
        return self >= 0
    }
    
    var isNegative: Bool {
        return self < 0
    }
    
    var bool: Bool {
        return self != 0
    }
    
    var countNumbers: Int {
        return String(self).count
    }
    
    
                  
}

let a = 457897656
a.isNegative
a.isPositive
a.bool
a.countNumbers
