//: [Previous](@previous)

import Foundation

protocol Duck {
    func quack()
    func swim()
    func display()
}

extension Duck {
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
     func display() {
        print("mallard duck appearance")
    }
}

class RedheadDuck: Duck {
    func display() {
        print("redhead duck appearance")
    }
}

//--- Test -----
let mallardDuck = MallardDuck()
mallardDuck.display()

let redheadDuck = RedheadDuck()
redheadDuck.display()
//: [Next](@next)
