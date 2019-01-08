//
//   Wage.swift
//  simpe job calc
//
//  Created by Denis Nefedov on 08/01/2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage ))
    }
}
