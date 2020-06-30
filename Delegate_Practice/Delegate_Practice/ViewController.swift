//
//  ViewController.swift
//  Delegate_Practice
//
//  Created by JinBae Jeong on 2020/07/01.
//  Copyright © 2020 pino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var messageBox: MessageBox?

  override func viewDidLoad() {
    super.viewDidLoad()
    
    messageBox = MessageBox(frame: CGRect(origin: .zero, size: CGSize(width: 300, height: 200)))
    
    guard let msg = messageBox else { return }
    msg.frame.origin = CGPoint(x: (UIScreen.main.bounds.width - msg.bounds.width) * 0.5, y: (UIScreen.main.bounds.height - msg.bounds.height) * 0.5)
    msg.backgroundColor = .lightGray
    msg.delegate = self
    view.addSubview(msg)
  }


}

extension ViewController: MessageBoxDelegate {
  func touchButton() {
    print("touchButton")
  }
}
