import Cocoa

protocol DisplayElement {
    func update(_ temperature: Double, _ humidity: Double, _ pressure: Double)
}

class CurrentConditionDisplay: DisplayElement {
    func update(_ temperature: Double, _ humidity: Double, _ pressure: Double) {

    }
}

class StatisticsDisplay: DisplayElement {
    func update(_ temperature: Double, _ humidity: Double, _ pressure: Double) {

    }
}

class ForecastDisplay: DisplayElement {
    func update(_ temperature: Double, _ humidity: Double, _ pressure: Double) {

    }
}

class WeatherData {
    let currentConditionDisplay: CurrentConditionDisplay
    let statisticsDisplay: StatisticsDisplay
    let forecastDisplay: ForecastDisplay

    init() {
        self.currentConditionDisplay = CurrentConditionDisplay()
        self.statisticsDisplay = StatisticsDisplay()
        self.forecastDisplay = ForecastDisplay()
    }

    func measurementChanged(_ temperature: Double, _ humidity: Double, _ pressure: Double) {
        currentConditionDisplay.update(temperature, humidity, pressure)
        statisticsDisplay.update(temperature, humidity, pressure)
        forecastDisplay.update(temperature, humidity, pressure)
    }
}

//------- Test ----------
let weatherData = WeatherData()
weatherData.measurementChanged(70,  100, 200)

