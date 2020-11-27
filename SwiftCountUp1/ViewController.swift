//
//  ViewController.swift
//  SwiftCountUp1
//
//  Created by Takuya Ando on 2020/11/26.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var countLabel: UILabel!
  
  var count = 0
  
  // Viewが呼ばれたとき
  override func viewDidLoad() {
    super.viewDidLoad()
    
    countLabel.text = "1"
  }
  
  // プラスボタン
  @IBAction func plus(_ sender: Any) {
    
    count = count + 1
    
    countLabel.text = String(count)
    
    // 色を黄色くする
    if count >= 10 {
      changeTextColor()
    }
    
  }
  
  func changeTextColor() {
    countLabel.textColor = .yellow
  }
  
  func resetColor() {
    countLabel.textColor = .white
  }
  
  // マイナスボタン
  @IBAction func minus(_ sender: Any) {
    
    count = count - 1
    
    countLabel.text = String(count)

    // 色を白くする
    if count <= 10 {
      resetColor()
      
    }
  }
}

