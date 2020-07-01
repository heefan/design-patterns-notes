import Cocoa

protocol Duck {
    func quack()
    func swim()
    func display()
}

extension Duck {
    func quack() {
        print("ALL: quack")
    }

    func swim() {
        print("ALL: swim")
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
