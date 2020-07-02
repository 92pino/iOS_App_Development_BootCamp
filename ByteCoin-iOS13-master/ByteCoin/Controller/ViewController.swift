//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var bitcoinLabel: UILabel!
  @IBOutlet var currencyLabel: UILabel!
  @IBOutlet var currencyPicker: UIPickerView!
  
  let coinManager = CoinManager()
  let coinModel = CoinModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    currencyPicker.delegate = self
    currencyPicker.dataSource = self
  }
  
}

extension ViewController: UIPickerViewDelegate {
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return coinManager.currencyArray[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    let selectedCurrency = coinManager.currencyArray[row]
    currencyLabel.text = selectedCurrency
    
    func didUpdatePrice() {
      DispatchQueue.main.async {
        self.coinManager.fetchCoin(selectedCurrency)
        self.bitcoinLabel.text = coinModel
      }
    }
  }
}

extension ViewController: UIPickerViewDataSource {
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    coinManager.currencyArray.count
  }
}
