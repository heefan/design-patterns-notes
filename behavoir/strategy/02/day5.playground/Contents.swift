import Cocoa

///  behavior interface
protocol FlyBehavior {
    func fly()
}

class FlyWithWings: FlyBehavior {
    func fly() {
        print("generic fly")
    }
}

class FlyNoWay: FlyBehavior {
    func fly() {
        print("generic no fly")
    }
}

class FlyWithRocket: FlyBehavior {
    func fly() {
        print("fly with rocket")
    }
}

///
protocol QuackBehavior {
    func quack()
}

class Quack: QuackBehavior {
    func quack() {
        print("quack")
    }
}

class Squeak: QuackBehavior {
    func quack() {
        print("squeak")
    }
}

class MuteQuack: QuackBehavior {
    func quack() {
        print("I cannot quack ")
    }
}

/// Parent Class
class Duck {
    var flyBehavior: FlyBehavior
    var quackBehavior: QuackBehavior

    init(flyBehavior: FlyBehavior, quackBehavior: QuackBehavior) {
        self.flyBehavior = flyBehavior
        self.quackBehavior = quackBehavior
    }


    func performQuack() {
        self.quackBehavior.quack()
    }

    func performFly() {
        self.flyBehavior.fly()
    }

    func swim() {
        print("SWIM")
    }

    func display() {
        print("subclass have to change")
    }
}



///
class MallardDuck: Duck {
    init() {
        super.init(flyBehavior: FlyWithWings(),  quackBehavior: Quack())
    }

    override func display() {
        print("MallardDuck Display")
    }

    func setFlyBehavior(newFlyBehavior: FlyBehavior) {
        self.flyBehavior = newFlyBehavior
    }


}


let mallardDuck = MallardDuck()
mallardDuck.performFly()

mallardDuck.setFlyBehavior(newFlyBehavior: FlyWithRocket())
mallardDuck.performFly()
