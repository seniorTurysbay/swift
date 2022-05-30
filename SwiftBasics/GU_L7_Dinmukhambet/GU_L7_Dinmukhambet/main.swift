//
//  main.swift
//  GU_L7_Dinmukhambet
//
//  Created by Dinmukhambet Turysbay on 31.05.2022.
//

import Foundation

enum CreditCardOperationError: Error {
    case insufficientFunds (moneyNeeded: Double)
    case frozenBalance
}


struct Thing {
    var price: Double
}


class CreditCardOperation {
    let limit: Double = -12800
    // изначальный баланс
    var balance: Double = 0
    var cardIsBlocked = false
    func buySomethig(thing: Thing)throws {
        guard cardIsBlocked == false else{
            throw CreditCardOperationError.frozenBalance
        }
        guard thing.price <= (-limit + self.balance) else {
            if balance < 0 {
                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit + balance)
            } else {
                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit - balance)
            }
        }
        balance = self.balance - thing.price
    }
    
    func depositeMoney (someMoney: Double) {
        balance = self.balance + someMoney
    }
    
    func printBalance() {
        print ("Balance is \(balance) $")
    }
    func changeCardState(cardIsBlocked: Bool) {
        switch cardIsBlocked {
        case true:
            self.cardIsBlocked = true
        case false:
            self.cardIsBlocked = false
        }
    }
}

extension CreditCardOperationError: CustomStringConvertible {
    var description: String {
        switch self {
        case .insufficientFunds(let moneyNeeded): return "There is not enough money on the card to carry out this operation. Your balance: \(operation.balance) rub, indispensably: \(moneyNeeded) rub"
        case .frozenBalance: return "Your balance is frozen for some reason. For more information, please contact the Bank."
        }
    }
}

let operation = CreditCardOperation()

do {
    try operation.buySomethig(thing: .init(price: 890.7))
} catch let error as CreditCardOperationError {
    print(error.description)
}

operation.printBalance()
operation.depositeMoney(someMoney: 10000)
operation.printBalance()

do {
    try operation.buySomethig(thing: .init(price: 70000))
} catch let error as CreditCardOperationError {
    print(error.description)
}

operation.printBalance()

do {
    try operation.buySomethig(thing: .init(price: 39109.3))
} catch let error as CreditCardOperationError {
    print(error.description)
}

operation.printBalance()
operation.changeCardState(cardIsBlocked: true)

do {
    try operation.buySomethig(thing: .init(price: 90))
} catch let error as CreditCardOperationError {
    print(error.description)
}

