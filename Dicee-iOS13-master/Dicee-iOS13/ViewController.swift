//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Properties
  private let imageBg: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = #imageLiteral(resourceName: "GreenBackground")
    imageView.contentMode = .scaleAspectFill
    
    return imageView
  }()
  
  private let logo: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = #imageLiteral(resourceName: "DiceeLogo")
    
    return imageView
  }()
  
  private let dice1: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = #imageLiteral(resourceName: "DiceOne")
    
    return imageView
  }()
  
  private let dice2: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = UIImage(named: "DiceOne")
    
    return imageView
  }()
  
  private let btn: UIButton = {
    let button = UIButton(type: .custom)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Roll", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor(red: 167/255, green: 26/255, blue: 27/255, alpha: 1)
    button.addTarget(self, action: #selector(rollButton(_:)), for: .touchUpInside)
    
    return button
  }()

  // MARK: - Life Cycle
  override func viewDidLoad() {
      super.viewDidLoad()
    
      configure()
  }
  
  // MARK: - Configure
  func configure() {
    view.backgroundColor = .white
    [imageBg, logo, dice1, dice2, btn].forEach { view.addSubview($0) }
    
    configureConstraints()
  }
  
  // MARK: - Configure Constraints
  func configureConstraints() {
    let guide = view.safeAreaLayoutGuide
    NSLayoutConstraint.activate([
      imageBg.topAnchor.constraint(equalTo: view.topAnchor),
      imageBg.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      imageBg.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      imageBg.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      logo.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
      logo.topAnchor.constraint(equalTo: guide.topAnchor, constant: 100),
      dice1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
      dice1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      dice1.widthAnchor.constraint(equalToConstant: 120),
      dice1.heightAnchor.constraint(equalToConstant: 120),
      dice2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
      dice2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      dice2.widthAnchor.constraint(equalToConstant: 120),
      dice2.heightAnchor.constraint(equalToConstant: 120),
      btn.topAnchor.constraint(equalTo: dice1.bottomAnchor, constant: 150),
      btn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      btn.widthAnchor.constraint(equalToConstant: 113),
      btn.heightAnchor.constraint(equalToConstant: 65),
    ])
  }
  
  // MARK: - Action
  @objc func rollButton(_ sender: UIButton) {
    let leftNum = Int.random(in: 0...5)
    let rightNum = Int.random(in: 0...5)
    let diceArr = ["One", "Two", "Three", "Four", "Five", "Six"]
    
    print(leftNum, rightNum, diceArr[leftNum])
    
    dice1.image = UIImage(named: "Dice\(diceArr[leftNum])")
    dice2.image = UIImage(named: "Dice\(diceArr[rightNum])")
  }


}

