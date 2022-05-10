import UIKit

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    let wind: Wind
}

struct Main: Codable {
    let temp: Double
    let humidity: Int
    let pressure: Double
}

struct Wind: Codable {
    let speed: Double
}

struct Weather: Codable {
    let description: String
}


