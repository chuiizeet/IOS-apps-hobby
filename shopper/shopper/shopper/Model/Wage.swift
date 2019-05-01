//
//  Wage.swift
//  shopper
//
//  Created by imac on 5/1/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class Wage {
    func getDays(forWage: Double, andPrice: Double) -> Double {
        let days = round(andPrice/forWage)
        return days
    }
}
