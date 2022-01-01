//
//  UserDefaultsManager.swift
//  BaseViewController
//
//  Created by Dmitry Onishchuk on 01.01.2022.
//

import Foundation
import UIKit

final class UserDefaultsManager {
    
    @UserDefault("currentLanguage", defaultValue: getDefaultLanguage()) var currentLanguage: String!
    
}


extension UserDefaultsManager {
    
    static private func getDefaultLanguage() -> String {
        
        var resDefault = "en"
        
        let currentLanguageOfSystem = Locale.current.languageCode
        
        if currentLanguageOfSystem == resDefault || currentLanguageOfSystem == "ru" {
            resDefault = currentLanguageOfSystem ?? resDefault
        }
        return resDefault
        
    }
    
}
