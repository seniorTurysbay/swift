//
//  main.swift
//  GU_L1_Dinmukhambet
//
//  Created by Dinmukhambet Turysbay on 13.04.2022.
//

import Foundation

// TASK 1
var a:Double = 1
var b:Double = 1
var c:Double = 1

for item in 1...3 {
    if item == 1{
        print("Enter a : ", terminator: "")
    }else if item == 2{
        print("Enter b : ", terminator: "")
    }else{
        print("Enter c : ", terminator: "")
    }

    if let input = readLine() {
        if let number = Double(input) {
            if item == 1{
                a = number
            }else if item == 2{
                b = number
            }else{
                c = number
            }
        }
    }
}

print("your quadratic equation: \(Int(a))x^2+\(Int(b))x+\(Int(c))")

let D = pow(b, 2) - 4*a*c
if D<0{
    print("Ooops,there is no value")
}else if D==0{
    let x = -b/2*a
    print("x \(x)")
}else{
    let x1 = (-b+sqrt(D))/(2*a)
    let x2 = (-b-sqrt(D))/(2*a)
    print("x1 \(x1)")
    print("x2 \(x2)")
}

// TASK 2
// AC-katet,BC-katet, AB-gipotenusa
var AC:Double = 0
var BC:Double = 0
var AB:Double = 0

print("Enter side AC : ", terminator: "")
if let input = readLine() {
    if let number = Double(input) {
        AC = number
    }
}
print("Enter side BC : ", terminator: "")
if let input = readLine() {
    if let number = Double(input) {
        BC = number
    }
}

if AC != 0 && BC != 0 {
    AB = sqrt(pow(AC, 2) + pow(BC, 2))
    print("Hypothenus = ",AB)
    let p = AB+BC+AC
    print("P = ",p)
    let s = (AC*BC)/2
    print("S = ",s)
}else{
    print("sides can not be equal to 0")
}

// TASK 3
var deposit:Double = 0
var percent: Double = 0
var sum: Int = 0
var value: Double = 0
    print("Enter amount of deposit : ", terminator: "")
    if let input = readLine() {
        if let number = Double(input) {
            deposit = number
        }
    }
    print("Enter yearly percent : ", terminator: "")
    if let input = readLine() {
        if let number = Double(input) {
            percent = number
        }
    }

if deposit != 0 && percent != 0{
    for _ in 1...60{
        value = (deposit*(percent)/100+value)/12
        sum = sum + Int(value)
    }
    print("in 5 years, you will earn",sum)
}

