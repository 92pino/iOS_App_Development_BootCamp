//
//  MessageBox.swift
//  Delegate_Practice
//
//  Created by JinBae Jeong on 2020/07/01.
//  Copyright © 2020 pino. All rights reserved.
//

import UIKit

protocol MessageBoxDelegate: class {
  func touchButton()
}

class MessageBox: UIView {
  weak var delegate: MessageBoxDelegate?
  var button: UIButton?
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
    
    configure()
  }
  
  func configure() {
    button = UIButton(type: .system)
    guard let btn = button else { return }
    btn.setTitle("SEND", for: .normal)
    btn.sizeToFit()
    btn.frame.origin = CGPoint(x: (self.bounds.width - btn.bounds.width) * 0.5, y: (self.bounds.height - btn.bounds.height) * 0.5)
    btn.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
  }
  
  @objc func tapButton() {
    print(1111)
    delegate?.touchButton()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
