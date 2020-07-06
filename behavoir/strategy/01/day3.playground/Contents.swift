import Cocoa

protocol Duck {
    func quack()
    func swim()
    func display()
    func fly()
}

extension Duck {
    func quack() {
        print("ALL: quack")
    }

    func swim() {
        print("ALL: swim")
    }

    func fly() {
        print("ALL: fly")
    }
}


class MallardDuck: Duck {
    func display() {
        print("MallardDuck: Display")
    }
}


class RedheadDuck: Duck {
    func display() {
        print("RedheadDuck: Display")
    }

}

// Day2 requirement
class RubberDuck: Duck {
    func display() {
        print("RubberDuck: display")
    }

    /// Thinking: even though `RubberDuck` does not need fly, but it has to implement an empty body.
    func fly() { }
}


class ToyDuck: Duck {
    func display() {
        print("")
    }
}

let toyDuck = ToyDuck()


