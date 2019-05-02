//
//  Strong.swift
//  mvc
//
//  Created by imac on 5/2/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class Strong: UILabel {
    
    let strong = UIFont(name: "HelveticaNeue-Bold", size: 20.0)
    
    override func awakeFromNib() {
        self.textColor = .black
        self.textAlignment = .center
        self.font = strong
        
    }
}
