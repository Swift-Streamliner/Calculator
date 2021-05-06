//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Tiger Mei on 05.05.2021.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation : (number: Double, calcMethod: String)?
    
    mutating func setNumber(_ number : Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n / 100
            case "=":
                performTwoNumberCalculation(number2: n)
            default:
                intermediateCalculation = (number: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumberCalculation(number2: Double) -> Double? {
        
        if let number1 = intermediateCalculation?.number,
           let operation = intermediateCalculation?.calcMethod {
            switch operation {
            case "+":
                return number1 + number2
            case "-":
                return number1 - number2
            case "÷":
                return number1 / number2
            case "×":
                return number1 * number2
            default:
                fatalError("Unknown operation")
            }
        }
        return nil
    }
    
}
