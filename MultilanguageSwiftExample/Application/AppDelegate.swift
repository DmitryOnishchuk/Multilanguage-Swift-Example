//
//  AppDelegate.swift
//  MultilanguageSwiftExample
//
//  Created by Dmitry Onishchuk on 01.01.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    private lazy var userDefaultsManager: UserDefaultsManager = UserDefaultsManager()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        DependencyManager {
            Module { self.userDefaultsManager }
        }.build()
        
        loadView()
        return true
    }
}

extension AppDelegate {
    
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    var mainVC: MainVC {
        return window!.rootViewController as! MainVC
    }
    
    func loadView() {
        Bundle.setLanguage(userDefaultsManager.currentLanguage)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainModuleBuilder().create()
        window?.makeKeyAndVisible()
    }
}

func print(_ items: Any...) {
    #if DEBUG
    Swift.print(items[0])
    #endif
}
