import Cocoa

protocol Duck {
    func swim()
    func display()
}

extension Duck {
    func swim() {
    }
}

///  behavior interface
protocol Flyable {
    func fly()
}

protocol Quackable {
    func quack()
}

/// subclasses
class MallardDuck: Duck, Flyable, Quackable {
    func display() {

    }

    func fly() {

    }

    func quack() {

    }
}

class RedheadDuck: Duck, Flyable, Quackable {
    func display() {

    }

    func fly() {

    }

    func quack() {

    }
}

class RubberDuck: Duck, Quackable {
    func display() {

    }

    func quack() {

    }
}

class DecoyDuck: Duck {
    func display() {
    }
}
