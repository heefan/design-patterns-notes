//
//  day2.swift
//  Startbuzz
//
//  Created by litian on 6/7/22.
//

import Foundation

protocol CondimentDecorator: Beverage {
    var beverage: Beverage {get set}
}

class Milk: CondimentDecorator {
    var beverage: Beverage
    
    init(_ beverage: Beverage) {
        self.beverage = beverage
    }
    
    func description() -> String {
        return beverage.description() + " Milk"
    }
    
    func cost() -> Float {
        return beverage.cost() + 1.0
    }
}

class Mocha: CondimentDecorator {
    var beverage: Beverage
    
    init(_ beverage: Beverage) {
        self.beverage = beverage
    }
    
    func description() -> String {
        return  beverage.description() + " Mocha"
    }
    
    func cost() -> Float {
        return beverage.cost() + 1.0
    }
}

class Soy: CondimentDecorator {
    var beverage: Beverage
    
    init(_ beverage: Beverage) {
        self.beverage = beverage
    }
    
    func description() -> String {
        return beverage.description() + " Soy"
    }
    
    func cost() -> Float {
        return beverage.cost() + 1.0
    }
}

class Whip: CondimentDecorator {
    var beverage: Beverage
    
    init(_ beverage: Beverage) {
        self.beverage = beverage
    }
    
    func description() -> String {
        return beverage.description() + " whip"
    }
    
    func cost() -> Float {
        return beverage.cost() + 1.0
    }
}
