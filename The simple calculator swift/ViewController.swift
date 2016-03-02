//
//  ViewController.swift
//  The simple calculator swift
//
//  Created by Александр Прендота on 28.02.16.
//  Copyright © 2016 Александр Прендота. All rights reserved.
//

import UIKit

// the digital
var x : Double = 0
// the second digital
var y : Double = 0
// the operation
var act = 0
// the flag for next number
var flagForNextDigital = true
// point for decimal figures
var point = false
// for deminal formula
var power : Double = 1


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    override func didReceiveMemoryWarning() {
      
        super.didReceiveMemoryWarning()
        
    }
    
    func printCorrectString() {
        if String(x).hasSuffix(".0"){
            self.result.text = " " +  String(Int(x))
        } else {
            self.result.text = " " +  String(x)
        }
    }
    
    @IBOutlet var result: UILabel!

    @IBAction func figures(sender: UIButton) {
        
        if flagForNextDigital {
            x = 0
            flagForNextDigital = false
        }
        if !point {
            x = x * 10 + Double(sender.tag)
            printCorrectString()
        } else {
            x = x + Double(sender.tag)/pow(10, power)
            power++
            printCorrectString()
        }
    }
    
    @IBAction func inverse(sender: AnyObject) {
        x = -x
        printCorrectString()
    }

    @IBAction func action(sender: AnyObject) {
        
        // all action - buttons have tags, for instance : "/" has tag - 1001.
        
        if !flagForNextDigital   {
        
            switch act {
                
                case 1001 :
                    x = y / x
                case 1002 :
                    x = y * x
                case 1003 :
                    x = y - x
                case 1004 :
                    x = y + x
            default : printCorrectString()
                
            }
        }
        
        act = sender.tag
        y = x
        flagForNextDigital = true
        printCorrectString()
        power = 1
        point = false
        
    }
    
    @IBAction func clear(sender: UIButton) {
        
        flagForNextDigital = true
        point = false
        act = 0
        power = 1
        x = 0
        y = 0
        printCorrectString()
    }
    
    @IBAction func percent(sender: AnyObject) {
        x = x / 100
        printCorrectString()
    }
 
    @IBAction func deciminal(sender: AnyObject) {
        if !point {
        point = true
        }
    }
}

