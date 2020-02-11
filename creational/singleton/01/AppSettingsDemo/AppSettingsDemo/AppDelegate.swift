//
//  AppDelegate.swift
//  AppSettingsDemo
//
//  Created by litian on 12/2/20.
//  Copyright © 2020 Singapore Airlines. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let maxConcurrentDownload = AppSettings.shared.int(forKey: "MaxConcurrentDownload")
        print("MaxConcurrentDownload: \(String(describing: maxConcurrentDownload))")
        return true
    }


}

