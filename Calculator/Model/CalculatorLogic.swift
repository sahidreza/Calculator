//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Sahid Reza on 09/02/23.
//

import Foundation

struct CalculatorLogic{
    
    private var number:Double?
    private var intermediateCalcilator:(n1:Double,calmethod:String)?
    
    mutating func setNumber(_ number:Double){
        
        self.number = number
    }
    
    
    mutating func calculate(symbol:String) -> Double? {
        
        if let n = number{
            
            if symbol == "+/-"{
                
                return n * -1
            }
            else if symbol == "AC"{
                
                return 0
            }
            
            else if symbol == "%"{
                
                return n * 0.01
                
            }
            
            else if symbol == "="{
                return  perfromTwoNumCaclulation(n2:n)
            }
            
            else {
                intermediateCalcilator = (n1: n,calmethod:symbol)
                
            }
            
        }
        print("hello")
        return nil
    }
    
    private func  perfromTwoNumCaclulation(n2:Double) -> Double? {
        
        if let n1 = intermediateCalcilator?.n1,let oprataion = intermediateCalcilator?.calmethod{
            
            switch oprataion {
                
            case "+" :
                return n1 + n2
            case "-":
                return n1 - n2
            default:
                fatalError("The oparationPassed in dosnot match")
            }
            
        }
        return nil
    }
    
    
    
    
    
}
