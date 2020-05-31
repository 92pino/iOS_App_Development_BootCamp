//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Constants
  lazy var viewStack: UIStackView = {
    let vs = UIStackView(arrangedSubviews: [numberView, calculateMark1, calculateMark2, calculateMark3, calculateMark4, calculateMark5])
    vs.translatesAutoresizingMaskIntoConstraints = false
    vs.axis = .vertical
    vs.alignment = .fill
    vs.distribution = .fillEqually
    vs.spacing = 1
    
    return vs
  }()
  
  private let numberView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    
    return view
  }()
  
  private let number: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.systemFont(ofSize: 50, weight: .thin)
    label.textColor = .white
    label.text = "0"
    
    return label
  }()
  
  lazy var calculateMark1: UIStackView = {
    let vs = UIStackView(arrangedSubviews: [acButton, pmButton, percentButton, divideButton])
    vs.translatesAutoresizingMaskIntoConstraints = false
    vs.axis = .horizontal
    vs.alignment = .fill
    vs.distribution = .fillEqually
    vs.spacing = 1
    
    return vs
  }()
  
  private let acButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("AC", for: .normal)
    button.backgroundColor = .darkGray
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let pmButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("+/-", for: .normal)
    button.backgroundColor = .darkGray
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let percentButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("%", for: .normal)
    button.backgroundColor = .darkGray
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let divideButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("÷", for: .normal)
    button.backgroundColor = UIColor(red: 255/255, green: 147/255, blue: 0/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  lazy var calculateMark3: UIStackView = {
    let vs = UIStackView(arrangedSubviews: [fourButton, fiveButton, sixButton, minusButton])
    vs.translatesAutoresizingMaskIntoConstraints = false
    vs.axis = .horizontal
    vs.alignment = .fill
    vs.distribution = .fillEqually
    vs.spacing = 1
    
    return vs
  }()
  
  private let fourButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("4", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let fiveButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("5", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let sixButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("6", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let minusButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("-", for: .normal)
    button.backgroundColor = UIColor(red: 255/255, green: 147/255, blue: 0/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  lazy var calculateMark4: UIStackView = {
    let vs = UIStackView(arrangedSubviews: [oneButton, twoButton, threeButton, plusButton])
    vs.translatesAutoresizingMaskIntoConstraints = false
    vs.axis = .horizontal
    vs.alignment = .fill
    vs.distribution = .fillEqually
    vs.spacing = 1
    
    return vs
  }()
  
  private let oneButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("4", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let twoButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("5", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let threeButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("6", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let plusButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("-", for: .normal)
    button.backgroundColor = UIColor(red: 255/255, green: 147/255, blue: 0/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  lazy var calculateMark5: UIStackView = {
    let vs = UIStackView(arrangedSubviews: [zeroButton, lastStackV])
    vs.translatesAutoresizingMaskIntoConstraints = false
    vs.axis = .horizontal
    vs.alignment = .fill
    vs.distribution = .fillEqually
    vs.spacing = 1
    
    return vs
  }()
  
  private let zeroButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("0", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  lazy var lastStackV: UIStackView = {
    let vs = UIStackView(arrangedSubviews: [dotButton, equalButton])
    vs.translatesAutoresizingMaskIntoConstraints = false
    vs.axis = .horizontal
    vs.alignment = .fill
    vs.distribution = .fillEqually
    vs.spacing = 1
    
    return vs
  }()
  
  private let dotButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(".", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let equalButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("=", for: .normal)
    button.backgroundColor = UIColor(red: 255/255, green: 147/255, blue: 0/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  lazy var calculateMark2: UIStackView = {
    let vs = UIStackView(arrangedSubviews: [sevenButton, eightButton, nineButton, multiplyButton])
    vs.translatesAutoresizingMaskIntoConstraints = false
    vs.axis = .horizontal
    vs.alignment = .fill
    vs.distribution = .fillEqually
    vs.spacing = 1
    
    return vs
  }()
  
  private let sevenButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("7", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let eightButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("8", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let nineButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("9", for: .normal)
    button.backgroundColor = UIColor(red: 29/255, green: 155/255, blue: 246/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()
  
  private let multiplyButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("×", for: .normal)
    button.backgroundColor = UIColor(red: 255/255, green: 147/255, blue: 0/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    
    return button
  }()

  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
      
    configure()
  }
  
  // MARK: - Configure
  func configure() {
    [viewStack].forEach{ view.addSubview($0) }
    
    NSLayoutConstraint.activate([
      viewStack.topAnchor.constraint(equalTo: view.topAnchor),
      viewStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      viewStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      viewStack.bottomAnchor.constraint(equalTo: view.bottomAnchor),
    ])
  }
  
  // MARK: - Actions


}

