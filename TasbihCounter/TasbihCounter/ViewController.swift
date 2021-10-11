//
//  ViewController.swift
//  TasbihCounter
//
//  Created by HAJAR on 10/10/2021.
//

import UIKit


class ViewController: UIViewController {
  
  
  @IBOutlet weak var displayLabel: UILabel!
  
  var counter : Int = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func discountPressed(_ sender: UIButton) {
    withdrawOneCounter()
  }
  
  
  @IBAction func counterPressed(_ sender: UIButton) {
    addOneCounter()
  }
  
  
  @IBAction func restPressed(_ sender: UIButton) {
    restartCount()
  }
  
  
  func addOneCounter() {
    counter += 1
    displayLabel.text = counter.description
  }
  
  
  func withdrawOneCounter() {
    if counter >= 1 {
      counter = counter - 1
      displayLabel.text = counter.description
    }
    
  }
  
  
  func restartCount() {
    counter = 0
    displayLabel.text = "\(counter)"
  }
  
}
