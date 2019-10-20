//
//  AppDelegate.swift
//  SingletonDemo
//
//  Created by SIADEV on 21/10/19.
//  Copyright © 2019 Singapore Airlines. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let maxConcurrentDownload = AppSettings.shared.int(forKey: "MaxConcurrentDownloads")
        print(maxConcurrentDownload ?? "")
        
        return true
    }
}

