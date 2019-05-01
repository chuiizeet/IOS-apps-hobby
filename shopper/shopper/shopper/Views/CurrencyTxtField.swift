//
//  CurrencyTxtField.swift
//  shopper
//
//  Created by imac on 4/29/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5,
                                                y: (frame.size.height / 2) - size / 2,
                                                width: size,
                                                height: size))
        currencyLbl.backgroundColor = .lightGray
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = .black
        currencyLbl.layer.cornerRadius = 5.0
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                           attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = UIColor.white
        }
        
    }

}
