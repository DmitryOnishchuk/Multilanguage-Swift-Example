//
//  UILabel+Localized.swift
//  MultilanguageSwiftExample
//
//  Created by Dmitry Onishchuk on 01.01.2022.
//

import Foundation
import UIKit

extension UILabel {
    
    @IBInspectable var localizableText: String {
        set(value) {
            self.text = value.localized
        }
        get {
            return self.text ?? ""
        }
    }
    
}
