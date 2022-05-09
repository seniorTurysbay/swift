import Cocoa

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

