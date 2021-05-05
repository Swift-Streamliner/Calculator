//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Tiger Mei on 05.05.2021.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    func calculate(symbol: String) -> Double? {
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number / 100
        } else {
            return 0
        }
    }
    
}
