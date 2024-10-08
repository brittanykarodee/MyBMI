//
//  CalculatorBrain.swift
//  MyBMI
//
//  Created by Brittany P Jenkins on 7/27/24.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)  {
     let bmiValue = (weight / pow(height, 2)) * 703
     
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You can benefit from increasing your calorie and protein intake.", condition: "Your body mass index needs attention!")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are in great shape!", condition: "You have an optimal body mass index!")
        } else {
            bmi = BMI(value: bmiValue, advice: "You can benefit from decreasing your calorie intake.", condition: "Your body mass index needs attention!")
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getCondition() -> String {
        return bmi?.condition ?? "No condition"
    }
    
}
