//
//  AppDelegate.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 12/26/17.
//  Copyright © 2017 Kendall Jefferson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let appCoordinator = AppCoordinator()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = appCoordinator.initialViewController
        window?.makeKeyAndVisible()
        
        appCoordinator.showMainView()
        
        return true
    }
}
