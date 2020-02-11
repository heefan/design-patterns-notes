//
//  AppSettings.swift
//  AppSettingsDemo
//
//  Created by litian on 12/2/20.
//  Copyright © 2020 Singapore Airlines. All rights reserved.
//

import Foundation

final public class AppSettings {
    public static let shared = AppSettings()

    private var settings: [String: Any] = ["Theme" : "Dark", "MaxConcurrentDownload": 4]

    private init() {
    }

    public func string(forKey key: String) -> String? {
        return settings[key] as? String
    }

    public func int(forKey key: String) -> Int? {
        return settings[key] as? Int
    }

    public func set(value: Any, forKey key: String) {
        settings[key] = value
    }
}
