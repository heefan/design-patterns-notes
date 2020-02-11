//
//  ViewController.swift
//  AppSettingsDemo
//
//  Created by litian on 12/2/20.
//  Copyright © 2020 Singapore Airlines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let theme = AppSettings.shared.string(forKey: "Theme") {
            print("theme: \(theme)")
        }
    }


}

