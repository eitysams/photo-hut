//
//  Extensions.swift
//  photo-hut
//
//  Created by hredoy on 4/5/20.
//  Copyright © 2020 hredoy. All rights reserved.
//

import UIKit
import Firebase

extension String {
    var isNotEmpty : Bool {
        return !isEmpty
    }
}

extension UIViewController {
    
    
    func simpleAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

extension Int {
    
    func penniesToFormattedCurrency() -> String {
        // if the int this function is being called on is 1234
        // dollars = 1234/100 = $12.34
        let dollars = Double(self) / 100
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        if let dollarString = formatter.string(from: dollars as NSNumber) {
            return dollarString
        }
        
        return "$0.00"
    }
}
