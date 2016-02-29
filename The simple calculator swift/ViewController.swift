//
//  ViewController.swift
//  The simple calculator swift
//
//  Created by Александр Прендота on 28.02.16.
//  Copyright © 2016 Александр Прендота. All rights reserved.
//

import UIKit
// the digital
var x = 0
// the second digital
var y = 0
// the operation
var act = 0
// the flag for next number
var flagForNextDigital = 1



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    override func didReceiveMemoryWarning() {
      
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func figures(sender: UIButton) {
        
        if flagForNextDigital == 1 {
            x = 0
            flagForNextDigital = 0
        }
        
        x = x * 10 + Int(sender.tag)
        self.result.text = String(x)
         
    }
    
    
    @IBAction func clear(sender: UIButton) {
        
        x = 0
        y = 0
        self.result.text = String(x)
        
    }
    

    @IBAction func action(sender: UIButton) {
        
        // all action - buttons have tags, for instance : "/" has tag - 1001.
        
        if act != 0 && flagForNextDigital != 1  {
        
        switch act {
                
                case 1001 :
                    x = x / y
                case 1002 :
                    x = x * y
                case 1003 :
                    x = x - y
                case 1004 :
                    x = x + y
                
            default :  self.result.text = String(x)
                
            }
        }
        
        act = sender.tag
        y = x
        flagForNextDigital = 1
        self.result.text = String(x)
        
    }
    
    @IBAction func deciminal(sender: AnyObject) {
        
    }

    @IBOutlet var result: UILabel!
    
}

