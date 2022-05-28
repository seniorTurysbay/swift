import Foundation

var greeting = "Hello, playground"

enum Brand : String {
    case brand = "porche 911"
    case releaseYear = "1988"
    case trunkVolume = "0"
}

enum WindowActions {
    case open, closed
}

enum EngineActions {
    case engineOn,engineOff
}

enum CargoActions:String{
    case upload = "Upload Half"
    case uploadFull = "Upload Full"
    case unload = "Unload Full"
    var description: String{
        return self.rawValue
    }
}

struct SportCar {
    let brand: String
    let releaseYear: Int
    var windowActions: WindowActions = .closed
    var engineActions: EngineActions
    var speed: Int
    mutating func addSpeed(count:Int){
        speed += count
    }
}

struct TrunkCar {
    let brand: String
    let releaseYear: Int
    let cargoVolume: Int
    var filledVolumeOfTrunk: Int
    var windowActions: WindowActions
    var engineActions: EngineActions
    var cargoActions: CargoActions
    var cargoStateDescription: String{
        get{
            return cargoActions.rawValue
        }
    }
}

var porche = SportCar(brand: "porche", releaseYear: 1998,engineActions:.engineOn,speed: 200)
porche.addSpeed(count: 400)
porche.speed
var kamaz = TrunkCar(brand: "kamaz", releaseYear: 1967, cargoVolume: 4, filledVolumeOfTrunk: 2, windowActions: .closed, engineActions: .engineOff, cargoActions: .upload)

kamaz.cargoStateDescription

kamaz.cargoActions.description

print(porche)
print(kamaz)
