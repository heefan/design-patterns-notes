protocol DisplayElement {
    func update(_ temp: Double, _ humidity: Double, _ pressure: Double)
}

class StatisticsDisplay: DisplayElement {
    func update(_ temp: Double, _ humidity: Double, _ pressure: Double) {

    }
}

class CurrentConditionsDisplay: DisplayElement {
    func update(_ temp: Double, _ humidity: Double, _ pressure: Double) {

    }
}

class ForecastDisplay: DisplayElement {
    func update(_ temp: Double, _ humidity: Double, _ pressure: Double) {

    }
}


class WeatherData {
    let currentConditionsDisplay: CurrentConditionsDisplay
    let statisticsDisplay: StatisticsDisplay
    let forecastDisplay: ForecastDisplay

    init() {
        self.currentConditionsDisplay = CurrentConditionsDisplay()
        self.statisticsDisplay = StatisticsDisplay()
        self.forecastDisplay = ForecastDisplay()
    }

    func measurementsChanged(_ temperature: Double, _ humidity: Double, _ pressure: Double)  {
        currentConditionsDisplay.update(temperature, humidity, pressure)
        statisticsDisplay.update(temperature, humidity, pressure)
        forecastDisplay.update(temperature, humidity, pressure)
    }
}

// --------- Test -----------
let weatherData = WeatherData()
weatherData.measurementsChanged(100, 100, 100)
