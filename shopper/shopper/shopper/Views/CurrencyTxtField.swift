//
//  CurrencyTxtField.swift
//  shopper
//
//  Created by imac on 4/29/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {
    
    //Awake feels
    override func awakeFromNib() {
        super.awakeFromNib()
        
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
