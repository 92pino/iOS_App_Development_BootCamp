//
//  WeatherManager.swift
//  Clima
//
//  Created by JinBae Jeong on 2020/07/01.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
  func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherData)
}

struct WeatherManager {
  
  let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&appid=450304596e79d17b205ef22af559d179&units=metric"
  
  var delegate: WeatherManagerDelegate?
  
  func fetchWeather(cityName: String) {
    let urlString = "\(weatherURL)&q=\(cityName)"
    performRequest(urlString: urlString)
  }
  
  func performRequest(urlString: String) {
    // 1. create a URL
    guard let url = URL(string: urlString) else { return }
    print("DEBUG: ", url)
    // 2. Create a URLSession
    let session = URLSession(configuration: .default)
    
    // 3. Give the session a task
    let task = session.dataTask(with: url) { (data, response, error) in
      if let error = error {
        print(error.localizedDescription)
      }
      
      guard let data = data else { return }
      let dataString = String(data: data, encoding: .utf8)
      do {
        let decoder = JSONDecoder()
        let objects = try decoder.decode(WeatherModel.self, from: data)
        let id = objects.weather[0].id
        let temp = objects.main.temp
        let name = objects.name
        
        let weather = WeatherData(conditionId: id, cityName: name, temperature: temp)
        self.delegate?.didUpdateWeather(self, weather: weather)
        
        print(weather.temperatureString)
      } catch let jsonError {
        print("Failed to deocde: ", jsonError.localizedDescription)
      }
    }.resume()
  }
}
