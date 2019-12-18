import Cocoa

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
        print("Mallard Duck")
    }
}

class RedheadDuck: Duck {
    override func display() {
        print("Redhead Duck")
    }
}

//
let mallardDuck = MallardDuck()
let redheadDuck = RedheadDuck()

mallardDuck.display()
redheadDuck.display()
