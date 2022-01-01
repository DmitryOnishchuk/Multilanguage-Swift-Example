//
//  UIButton+Localized.swift
//  MultilanguageSwiftExample
//
//  Created by Dmitry Onishchuk on 01.01.2022.
//

import Foundation
import UIKit

extension UIButton {
    
    @IBInspectable var localizableTitle: String {
        set(value) {
            self.setTitle(value.localized, for: .normal)
        }
        get {
            return titleLabel?.text ?? ""
        }
    }
    
}
