import SwiftUI

// TASK 1
func oddOrEven(_ innerValue: Int) {
    if(innerValue % 2 == 0){
        print("Четное число")
    }else{
        print("Нечетное число")
    }
}
oddOrEven(100)
print("-------------")


// TASK 2
func divideByThree(_ innerValue: Int) -> String{
    if(innerValue % 3 == 0){
        return "Делиться без остатка"
    }else{
        let res = Float(innerValue).truncatingRemainder(dividingBy: 3)
        return "Остаток: \(res)"
    }
}
print(divideByThree(100))
print("-------------")


// TASK 3
var array:[Int] = []

for item in (1...100){
    array.append(item)
}
print(array)
print("-------------")


// TASK 4
array.removeAll(where: {Float($0).truncatingRemainder(dividingBy: 3) != 0})
array.removeAll(where: {$0 % 2 == 0})

print(array)
print("-------------")


// TASK 5
var fibonacciArray: [Int] = []

func findFibonnacci(_ innerValue: Int) -> Int{
    guard innerValue > 2 else{
        return 1
    }
    return findFibonnacci(innerValue-1) + findFibonnacci(innerValue-2)
}
// указал диапазон до 25, так как дальше выполнение программы занимает большее кол-во времени
for item in (1...25){
    fibonacciArray.append(findFibonnacci(item))
}
print(fibonacciArray)
print(fibonacciArray.count)


// TASK 6
var primeNumberArray:[Int] = []
func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
for item in (1...100){
    if(isPrime(item)){
        primeNumberArray.append(item)
    }
}
print(primeNumberArray)
