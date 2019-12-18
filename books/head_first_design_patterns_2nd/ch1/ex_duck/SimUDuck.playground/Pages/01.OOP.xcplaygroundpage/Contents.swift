//: [Previous](@previous)

import Foundation

class Duck {
    func quack() {
        print("generic quack")
    }
    func swim() {
        print("generic swim")
    }
    func display() {
        print("generic display")
    }
}

class MallardDuck: Duck {
    override func display() {
        print("mallard duck appearance")
    }
}

class RedheadDuck: Duck {
    override func display() {
        print("redhead duck appearance")
    }
}


//--- Test -----
let mallardDuck = MallardDuck()
mallardDuck.display()

let redheadDuck = RedheadDuck()
redheadDuck.display()

//: [Next](@next)
