//
//  ViewController.swift
//  Calculator
//
//  Created by Mani on 3/7/17.
//  Copyright © 2017 Vishnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    
    
    var userTyping = false
    
    
    
    @IBAction func digitPressed(_ sender: UIButton)
    {
       let digit = sender.currentTitle!
        
        if userTyping
        {
            let textInDisplay = display.text!
            display.text = textInDisplay + digit
        }
        else
        {
            display!.text = digit
            userTyping = true
        }
    }
    
    var displayValue: Double
    {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton)
    {
        userTyping = false
        if let mathematicalSymbol = sender.currentTitle
        {
            switch mathematicalSymbol
            {
                case "π":
                    displayValue = Double.pi
                
                case "√":
                    displayValue = sqrt(displayValue)
                
                default:
                    break
            }
        }
        
        
    }
    
}

