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
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var daysLbl: UILabel!
    
    var wageModel = Wage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0,
                                             y: 0,
                                             width: view.frame.size.width,
                                             height: 60))
        calcBtn.backgroundColor = .orange
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        daysLbl.isHidden = true
        
        
    }
    
    @objc fileprivate func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                daysLbl.isHidden = false
                resultLbl.text = "\(wageModel.getDays(forWage: wage, andPrice: price))"
            }
        }
    }
    
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        daysLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    

}

