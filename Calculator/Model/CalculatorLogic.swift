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
    
    mutating func setNumber(_ number : Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n / 100
            } else {
                return 0
            }
        }
        return nil
    }
    
}
