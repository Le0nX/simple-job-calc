//
//  currencyTextField.swift
//  simpe job calc
//
//  Created by Denis Nefedov on 08/01/2019.
//  Copyright © 2019 X. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {

    /* Will run this code when textfield
        comes up from the interface builder */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2525952483)
        layer.cornerRadius = 5.0
        textAlignment = .center

        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                           attributes: [.foregroundColor: UIColor.white])
            // override original placeholder
            attributedPlaceholder = place
            textColor = UIColor.white
        }
    }
}
