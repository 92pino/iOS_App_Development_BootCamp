//
//  CoinModel.swift
//  ByteCoin
//
//  Created by JinBae Jeong on 2020/07/02.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel: Codable {
  let time: String
  let asset_id_base: String
  let asset_id_quote: String
  let rate: Double
}
