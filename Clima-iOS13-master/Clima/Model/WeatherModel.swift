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
  let main: Main
  let weather: [Weather]
}

struct Main: Codable {
  let temp: Double
}

struct Weather: Codable {
  let id: Int
  let description: String
}
