import UIKit
import CoreLocation

struct WeatherModel {
    let cityName: String
    let temperature: Double
    let description: String
    let humidity: Int
    let pressure: Double
    let speed: Double
    var latitude: CLLocationDegrees?
    var longitude: CLLocationDegrees?
    
    var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
}
