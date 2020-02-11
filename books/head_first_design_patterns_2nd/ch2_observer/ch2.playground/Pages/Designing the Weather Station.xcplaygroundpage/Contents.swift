protocol Observer {
    func update(_ temperature: Double, _ humidity: Double, _ pressure: Double)
}


protocol Subject {
    func register(observer: Observer)
    func remove(observer: Observer)
    func notifyObservers()
}

class WeatherData: Subject {
    var observers: [Observer] = []

    func register(observer: Observer) {
        self.observers.append(observer)
    }

    func remove(observer: Observer) {
        if let index = observers.index(where: { $0 == observer }) {
            observers.remove(at: index)
        }
    }

    func notifyObservers(temperature: Double, humidity: Double, pressure: Double) {
        for each in observers {
            each.update(temperature, humidity, pressure)
        }
    }

}
