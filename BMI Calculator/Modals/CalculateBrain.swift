//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Muhammad Mukthayar on 01/06/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculateBrain {
    
    var BMIValue : Float = 0.0;
    
   mutating func calculateBMIValue(height:Float,weight:Float) {
        let calculatBMI = weight / height * height
            BMIValue = calculatBMI
    }
    
  func getBMIValue() -> String {
        return String(format: "%.2f", BMIValue)
     }
}
