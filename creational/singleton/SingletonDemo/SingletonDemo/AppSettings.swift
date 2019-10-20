//
//  AppSettings.swift
//  SingletonDemo
//
//  Created by SIADEV on 21/10/19.
//  Copyright © 2019 Singapore Airlines. All rights reserved.
//

import Foundation

final public class AppSettings {
    
    public static let shared = AppSettings()
    
    private var settings: [String: Any] = ["Theme": "Dark", "MaxConcurrentDownloads": 4]

    private init() {}
    
    private let serialQueue = DispatchQueue(label: "serialQueue")
 
    public func string(forKey key: String) -> String? {
        var result: String?
        serialQueue.sync {
            result = settings[key] as? String
        }
        return result
    }
    
    public func int(forKey key: String) -> Int? {
        var result: Int?
        serialQueue.sync {
            result =  settings[key] as? Int
        }
        return result
    }
    
    public func set(value: Any, forKey key: String) {
        serialQueue.sync {
            settings[key] = value
        }
    }
    
}
