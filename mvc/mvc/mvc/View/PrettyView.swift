//
//  PrettyView.swift
//  mvc
//
//  Created by imac on 5/1/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class PrettyView: UIView {
    
    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.75
        backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        layer.borderWidth = 5
    }

}
