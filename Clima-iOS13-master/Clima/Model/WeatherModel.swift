//
//  WeatherModel.swift
//  Clima
//
//  Created by JinBae Jeong on 2020/07/01.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel: Codable {
  
  let name: String
  let main: Temp
  let weather: [Weather]
}

struct Temp: Codable {
  let temp: Double
}

struct Weather: Codable {
    let weatherDescription: String

    enum CodingKeys: String, CodingKey {
        case weatherDescription = "description"
    }
}
