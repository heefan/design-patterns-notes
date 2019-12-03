import Cocoa
import CoreFoundation

protocol FlyBehavior {
    func fly()
}

class FlyWithWings: FlyBehavior {
    func fly() {
        print("Fly with wings")
    }
}

class FlyNoWay: FlyBehavior {
    func fly() {
        print("I can't fly")
    }
}


protocol QuackBehavior {
    func quack()
}

class Quack: QuackBehavior {
    func quack() {
        print("Quack")
    }
}

class MuteQuack: QuackBehavior {
    func quack() {
        print("mute quack")
    }
}

class Squeak: QuackBehavior {
    func quack() {
        print("Squeak")
    }
}


class Duck {
    let flyBehavior: FlyBehavior
    let quackBehavior: QuackBehavior

    init(flyBehavior: FlyBehavior, quackBehavior: QuackBehavior) {
        self.flyBehavior = flyBehavior
        self.quackBehavior = quackBehavior
    }

    func swim() {
        print("Base Swim function")
    }

    func display() {
        print("display() must be override")
    }

    func performQuack() {
        flyBehavior.fly()
    }

    func performFly() {
        quackBehavior.quack()
    }
}

//----------------------------------

class MallardDuck: Duck {
    init() {
        super.init(flyBehavior: FlyWithWings(), quackBehavior: Quack())
    }

    override func display() {
       print("override: MallardDuck: Display")
    }
}

class DecoyDuck: Duck {
    init() {
        super.init(flyBehavior: FlyNoWay(), quackBehavior: MuteQuack())
    }

    override func display() {
        print("override: decoy duck display")
    }
}

// Testing
let mallardDuck = MallardDuck()
mallardDuck.display()
mallardDuck.performQuack()
mallardDuck.performFly()


