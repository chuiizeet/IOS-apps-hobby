//
//  ViewController.swift
//  shopper
//
//  Created by imac on 4/29/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0,
                                             y: 0,
                                             width: view.frame.size.width,
                                             height: 60))
        calcBtn.backgroundColor = .orange
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.white, for: .normal)
        //Selectot
        calcBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        
    }
    
    @objc fileprivate func calculate() {
        print("IA🐥❤️")
    }


}

