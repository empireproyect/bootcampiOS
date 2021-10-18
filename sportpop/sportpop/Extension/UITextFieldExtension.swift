//
//  UITextFieldExtension.swift
//  sportpop
//
//  Created by Ricardo Hernandez on 18/10/21.
//

import UIKit

extension UITextField {
    //Redondear
    
    func round() {
        layer.cornerRadius = bounds.height / 1.5
        clipsToBounds = true
    }
    
}
