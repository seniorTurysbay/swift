import Cocoa

//enum HondaDoorState {
//    case open, close
//}
////
//enum UIColor {
//    case white,black, blue
//}
////
//enum Transmission {
//    case manual, auto
//}
//struct Honda {
//    let color: UIColor
//    let mp3: Bool
//    let transmission: Transmission
//    var km: Double
//    var doorState: HondaDoorState
//    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double,
//         doorState: HondaDoorState) {
//        self.color = color
//        self.mp3 = mp3
//        self.transmission = transmission
//        self.km = km
//        self.doorState = doorState
//    }
//}
//var car1 = Honda(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
//var car2 = Honda(color: .white, mp3: false, transmission: .auto, km: 120.0, doorState: .close)
////print(car1.km,", ", car2.km) //0.0, 120.0
////car2 = car1
////print(car1.km,", ", car2.km) //0.0, 0.0
////car1.km = 500.0
////print(car1.km,", ", car2.km) //500.0, 0.0
//
//print("car1",car1)
//print("car2",car2)
//car2 = car1
//car1.km = 500
//
//print("car1",car1)
//print("car2",car2)
//class Honda {
//    let color: UIColor
//    let mp3: Bool
//    let transmission: Transmission
//    var km: Double
//    var doorState: HondaDoorState
//    // ключевое слово static указывает на то, что это свойство класса
//    static var carCount = 0
//    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: HondaDoorState) {
//        self.color = color
//        self.mp3 = mp3
//        self.transmission = transmission
//        self.km = km
//        self.doorState = doorState
//        // в конструкторе будем увеличивать переменную на 1
//        Honda.carCount += 1 }
//    static func countInfo(){
//        print("Выпущено \(self.carCount) автомобилей")
//    }
//
//}
//let car1 = Honda(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
//let car2 = Honda(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
//let car3 = Honda(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
// обратимся к имени класса для доступа к свойству print(Honda.carCount) // 3
//Honda.countInfo()
// Выпущено 3 автомобилей
//}
//let car1 = Honda(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
//let car2 = Honda(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
//let car3 = Honda(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
//обратимся к имени класса для доступа к свойству print(Honda.carCount) // 3
//print(Honda.carCount)

//class Rectangle {
//    var sideA: Double // обязательные переменные
//    var sideB: Double
//    func getArea(){
//        print(sideA*sideB)
//    }
//    init(sideA: Double, sideB: Double) { // обязательный конструктор
//        self.sideA = sideA
//        self.sideB = sideB
//
//    }
//    convenience init(side: Double){ // вспомогательный конструктор для создания квадрата
//        self.init(sideA: side, sideB: side)
//    }
//
//}
//let rect = Rectangle(side: 12)
//rect.getArea()
//print(rect)
//
enum UIColor {
    case white,black, blue,green
}
//
enum Transmission {
    case manual, auto
}
class Car {
    var color: UIColor
    var doorCount: Int
    let maxVelocity: Double
    let year: Int
    let price: Int
    let transmission: Transmission
    
    var isEngineOn: Bool = false
    func launchEngine() {
        isEngineOn = true
    }
    
    func changeColor(){
        color = .blue
    }
    
    init(color: UIColor, doorCount: Int, maxVelocity: Double, year: Int, price: Int,transmission: Transmission) {
        self.color = color
        self.doorCount = doorCount
        self.maxVelocity = maxVelocity
        self.year = year
        self.price = price
        self.transmission = transmission
    }
}

class SportCar : Car {
    override var doorCount: Int {
        get {
            return super.doorCount
        }
        set{
            super.doorCount = newValue
        }
    }
    override var isEngineOn: Bool {
        get{
            return super.isEngineOn
        }
        set{
            super.isEngineOn = newValue
        }
    }
    override func launchEngine() {
        isEngineOn = true
    }
    
    override func changeColor(){
        color = .white
    }
    
    let maxSpeedAfterSec: Int
    init(maxSpeedAfterSec:Int,doorCount:Int, color: UIColor, maxVelocity: Double, year: Int, price: Int,transmission: Transmission){
        
        self.maxSpeedAfterSec = maxSpeedAfterSec
        
        super.init(color: color, doorCount: doorCount, maxVelocity: maxVelocity, year: year,price: price,transmission: transmission)
    }
}

class TrunkCar: Car{
    override var doorCount: Int {
        get {
            return super.doorCount
        }
        set{
            super.doorCount = newValue
        }
    }
    let engine: String
    
    override var isEngineOn: Bool {
        get{
            return super.isEngineOn
        }
        set{
            super.isEngineOn = newValue
        }
    }
    
    override func changeColor() {
        color = .black
    }
    
    override func launchEngine() {
        isEngineOn = true
    }
    
    init(color: UIColor, doorCount: Int, maxVelocity: Double, year: Int, price: Int, transmission: Transmission,engine: String) {
        
        self.engine = engine
        
        super.init(color: color, doorCount: doorCount, maxVelocity: maxVelocity, year: year, price: price, transmission: transmission)
    }
}

let lamborghini = TrunkCar(color:.green, doorCount: 4, maxVelocity: 200, year: 2018, price: 1009991, transmission: .auto, engine: "V-12")
lamborghini.changeColor()
lamborghini.launchEngine()
lamborghini
print(lamborghini)

let neo = SportCar(maxSpeedAfterSec: 10, doorCount: 2, color: .green, maxVelocity: 400, year: 2019, price: 1998881, transmission: .manual)
neo.changeColor()
neo.launchEngine()
neo

