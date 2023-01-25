
Int8.min
Int8.max
UInt8.min
UInt8.max

Int16.min
Int16.max
UInt16.min
UInt16.max

Int32.min
Int32.max
UInt32.min
UInt32.max

Int64.min
Int64.max
UInt64.min
UInt64.max


print("Int8.min = \(Int8.min)")
print("Int8.max = \(Int8.max)")
print("UInt8.min = \(UInt8.min)")
print("UInt8.max = \(UInt8.max)")

print("Int16.min = \(Int16.min)")
print("Int16.max = \(Int16.max)")
print("UInt16.min = \(UInt16.min)")
print("UInt16.max = \(UInt16.max)")

print("Int32.min = \(Int32.min)")
print("Int32.max = \(Int32.max)")
print("UInt32.min = \(UInt32.min)")
print("UInt32.max = \(UInt32.max)")

print("Int64.min = \(Int64.min)")
print("Int64.max = \(Int64.max)")
print("UInt64.min = \(UInt64.min)")
print("UInt64.max = \(UInt64.max)")


let a = 25
let b : Double = 8.5
let c : Float = 7.11

let d = a + Int(b) + Int(c)
print("Int = \(d)")

let i = Double(a) + b + Double(c)
print("Double = \(i)")

let f = Float(a) + Float(b) + c
print("Float = \(f)")

if Double(d) < i {
    print("Результат инт меньше дабл")
} else {
    print("Инт не может быть меньше дабл")
}





