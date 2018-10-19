//
//  AppDelegate.swift
//  GproMed
//
//  Created by Victor Magalhaes on 18/10/2018.
//  Copyright © 2018 GproMed. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setRootViewController()
        return true
    }

    private func setRootViewController() {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = LoginViewController()
        window?.makeKeyAndVisible()
    }
}

