import Foundation

/* *********** fly   ****************/
protocol Flyable {
    func fly()
}

protocol FlyWithWings: Flyable { }
extension FlyWithWings {
    func fly() {
        print("I can fly with wings")
    }
}

protocol FlyNoWay: Flyable { }
extension FlyNoWay {
    func fly() {
        print("I cannot fly")
    }
}

protocol FlyWithRocket: Flyable { }
extension FlyWithRocket {
    func fly() {
        print("I can fly with rocket")
    }
}

/* ************ quack ***************/
protocol Quackable {
    func quack()
}

protocol Quack: Quackable { }
extension Quack {
    func quack() {
        print("I can quack")
    }
}

protocol Squeak: Quackable { }
extension Squeak {
    func quack() {
        print("I can squeak")
    }
}

protocol MuteQuack: Quackable { }
extension MuteQuack {
    func quack() {
        print("I can not quack")
    }
}


/* ************* Duck **************/
protocol Duck {
    func swim()
    func display()
}

extension Duck {
    func swim() {
        print("All duck can sim")
    }
}

class MallardDuck: Duck, FlyWithWings, Quack {
    func display() {
        print("Mallard Duck Appearance")
    }
}

class RedhatDuck: Duck, FlyWithRocket, Quack {
    func display() {
        print("Redhead Duck Appearance")
    }
}

class RubberDuck: Duck, FlyNoWay, MuteQuack {
    func display() {
        print("Rubber Duck Appearance")
    }
}
