//
//  main.swift
//  GU_L5_Dinmukhambet
//
//  Created by Dinmukhambet Turysbay on 10.05.2022.
//

import Foundation

// practice

//var notifier = VKNotifier()
//notifier.sendBirthdayNotification(userName: "Dinmukhambet")
//let smth = notifier.getData()
//print(smth!)

enum windows{
    case open
    case closed
}
enum engine{
    case on
    case off
}
enum nitro{
    case nitroOn
    case nitroOff
}
enum luggage{
    case trunkIsFull
    case TrunkIsEmpty
}
protocol Car {
    var brand: String {get}
    var release: Int {get}
    var engineState: engine {get set}
    var windowsState: windows {get set}
}
extension Car {
    mutating func changeEngineState(engineState: engine){
        self.engineState = engineState
    }
    mutating func chageWindowsState(windowsState: windows){
        self.windowsState = windowsState
    }
}
class basicCar: Car{
    var brand: String
    var release: Int
    var engineState: engine = .off
    var windowsState: windows = .closed
    init(brand: String, release: Int) {
        self.brand = brand
        self.release = release
    }
}
class sportCar: basicCar, CustomStringConvertible{
    var nitroState: nitro = .nitroOff
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), nitro is \(nitroState), release date is \(release)"
    }
}
class trunkCar: basicCar, CustomStringConvertible{
    var trunkState: luggage = .TrunkIsEmpty
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), trunk is \(trunkState), release date is \(release)"
    }
}

var porche = sportCar(brand: "porche", release: 2018)
var kadillac = trunkCar(brand: "Газель", release: 2005)
porche.changeEngineState(engineState: .on)
porche.nitroState = .nitroOn
kadillac.chageWindowsState(windowsState: .open)
kadillac.trunkState = .trunkIsFull
print(porche.description)
print(kadillac.description)
