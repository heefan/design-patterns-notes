//
//  main.swift
//  Startbuzz
//
//  Created by litian on 6/7/22.
//

import Foundation

protocol Beverage {
    func description() -> String
    func cost() -> Float
}

class HouseBlend: Beverage {
    func description() -> String {
        return "HouseBlend"
    }
    func cost() -> Float {
        return 1.0
    }
}

class DarkRoast: Beverage {
    func description() -> String {
        return "DarkRoast"
    }
    func cost() -> Float {
        return 2.0
    }
}

class Decaf: Beverage {
    func description() -> String {
        return "Decaf"
    }
    func cost() -> Float {
        return 3.0
    }
}

class Esspresso: Beverage {
    func description() -> String {
        return "Esspresso"
    }
    
    func cost() -> Float {
        return 4.0
    }
}

