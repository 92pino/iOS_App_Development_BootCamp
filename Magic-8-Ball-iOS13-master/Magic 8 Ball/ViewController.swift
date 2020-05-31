//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  // MARK: - Constant
  let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
  
  private let askLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Ask Me Anything"
    label.font = UIFont.systemFont(ofSize: 34)
    label.textColor = .white
    
    return label
  }()
  
  private let ballImage: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = #imageLiteral(resourceName: "ball5")
    
    return imageView
  }()
  
  private let randomButton: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Ask", for: .normal)
    button.addTarget(self, action: #selector(actionRandomBall(_:)), for: .touchUpInside)
    button.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
    button.backgroundColor = .white
    button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    
    return button
  }()
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    
    configure()
  }
  
  // MARK: - Configure
  func configure() {
    [askLabel, ballImage, randomButton].forEach{ view.addSubview($0) }
    
    NSLayoutConstraint.activate([
      askLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
      askLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      ballImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
      ballImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      randomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      randomButton.topAnchor.constraint(equalTo: ballImage.bottomAnchor, constant: 100),
    ])
  }
  
  // MARK: - Action
  @objc func actionRandomBall(_ sender: UIButton) {
    // solution 1
    // ballImage.image = ballArray.randomElement()
    
    // solution 2
    ballImage.image = ballArray[Int.random(in: 0...4)]
  }
  
}

