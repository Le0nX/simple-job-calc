//
//  currencyTextField.swift
//  simpe job calc
//
//  Created by Denis Nefedov on 08/01/2019.
//  Copyright © 2019 X. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    /* We use IBDesgnable to make this code avilable to render
       our changes in InterfaceBuilder. Also we need to call prepareForInterfaceBuilder()
       to render out changes */
    
    override func prepareForInterfaceBuilder() {
        customizeButton()
    }
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current // by default our location
        currencyLbl.text = formater.currencySymbol
        addSubview(currencyLbl)
    }
    
    /* Will run this code when textfield
        comes up from the interface builder */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeButton()
    }
    
    func customizeButton(){
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2525952483)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true

        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                           attributes: [.foregroundColor: UIColor.white])
            // override original placeholder
            attributedPlaceholder = place
            textColor = UIColor.white
        }
    }
}
