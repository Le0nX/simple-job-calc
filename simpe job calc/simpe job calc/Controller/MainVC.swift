//
//  ViewController.swift
//  simpe job calc
//
//  Created by Denis Nefedov on 07/01/2019.
//  Copyright © 2019 X. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9294117647, green: 0.5960784314, blue: 0.2274509804, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) // ALWAYS use .setTitle on buttons instead of .title
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate() {
        // если в полях есть текст
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            // если можем его конвертировать в Double
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true) // dismiss keyboard
                resultLbl.text = String(Wage.getHours(forWage: wage, andPrice: price))
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
            }
        }
    }
    
    @IBAction func clearCalcBtn(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

