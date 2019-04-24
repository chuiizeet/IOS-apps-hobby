//
//  ViewController.swift
//  hello color
//
//  Created by imac on 4/22/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isYellow = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: Any) {
        
        if isYellow {
            view.backgroundColor = UIColor.green
            isYellow = false
        } else {
            view.backgroundColor = UIColor.yellow
            isYellow = true
        }
        
    }
    


}

