//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Muhammad Mukthayar on 01/06/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMIValue(height:Float,weight:Float) {
        
        let calculatBMI = weight / ( height * height )
        
        if calculatBMI < 18.5 {
            bmi = BMI(Value: calculatBMI, Advice: "Eat More", BGColor: .red)
        } else  if calculatBMI < 24.9 {
            bmi = BMI(Value: calculatBMI, Advice: "Fit", BGColor: .systemRed)
        } else {
            bmi = BMI(Value: calculatBMI, Advice: "Normal", BGColor: .green)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.2f", bmi?.Value ?? "0.00")
    }
    
    func getAdvice() -> String {
        return bmi?.Advice ?? "something went wrong"
    }
    
    func getBgColor() -> UIColor {
        return bmi?.BGColor ?? .black
    }
    
}
