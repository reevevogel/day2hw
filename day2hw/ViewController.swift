//
//  ViewController.swift
//  day2hw
//
//  Created by Reeve Vogel on 2/24/15.
//  Copyright (c) 2015 RVCF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var names = ["Reeve","Josh","Viviane","Matt","Marlee"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = self.names[index]
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rightPressed(sender: AnyObject) {
        if self.index < self.names.count - 1 {
            self.index++
            self.myLabel.text = self.names[index]
        }
    }
   
    @IBAction func leftPressed(sender: AnyObject) {
        if self.index > 0 {
            self.index--
            self.myLabel.text = self.names[index]
        }
    }

}

