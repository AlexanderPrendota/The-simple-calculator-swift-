//
//  ViewController.swift
//  The simple calculator swift
//
//  Created by Александр Прендота on 28.02.16.
//  Copyright © 2016 Александр Прендота. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func figures(sender: UIButton) {
        
        print("Digital is \(sender.tag)")
    }

    @IBAction func action(sender: UIButton) {
       
        
    }
    
    @IBAction func deciminal(sender: AnyObject) {
        
    }
    
    
}

