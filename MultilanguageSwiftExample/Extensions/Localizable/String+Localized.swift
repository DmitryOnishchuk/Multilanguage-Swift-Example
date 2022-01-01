//
//  String+Localized.swift
//  MultilanguageSwiftExample
//
//  Created by Dmitry Onishchuk on 01.01.2022.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
