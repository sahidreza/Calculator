//
//  ViewController.swift
//  Calculator
//
//  Created by Sahid Reza on 07/02/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isfinisingTypingnumber:Bool = true
    private var calcilator = CalculatorLogic()
    private var displayValue:Double{
        get{
            return Double(displayLabel.text!)!
        }
        
        set{
            displayLabel.text = String(newValue)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        isfinisingTypingnumber = true
        
        calcilator.setNumber(displayValue)
        
        if let calMenthod = sender.currentTitle{
            
            if let result = calcilator.calculate(symbol: calMenthod){
                displayValue = result
            }
            
          
            
        }
        
        
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        
        if let senderTitle = sender.currentTitle{
            
            if isfinisingTypingnumber{
                displayLabel.text = senderTitle
                isfinisingTypingnumber = false
                
            }else{
                
                if senderTitle == "."{
                    
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        
                        return
                    }
                    
                }
                
                displayLabel.text = displayLabel.text! + senderTitle
            }
            
        }
        
    }
    
}


