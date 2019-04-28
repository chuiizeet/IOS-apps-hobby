//
//  BorderButton.swift
//  swoosh
//
//  Created by imac on 4/26/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
