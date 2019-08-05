//
//  AppDelegate.swift
//  Nori Network Service
//
//  Created by IDAP Developer on 8/5/19.
//  Copyright © 2019 Bendis. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let controller = MainViewController()
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.rootViewController = controller
        window.makeKeyAndVisible()
        
        return true
    }
}
