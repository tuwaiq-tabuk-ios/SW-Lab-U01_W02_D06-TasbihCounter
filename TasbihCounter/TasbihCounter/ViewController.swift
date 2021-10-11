//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Yousef Albalawi on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  
  
  
  @IBOutlet weak var display_laipl: UILabel!
  
  
  // var countr: int = 0
  var counter = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func discountPreased(_ sender: UIButton) {
    discountOneToCounter()
  }
  
  
  @IBAction func contarPresad(_ sender: UIButton) {
    addOneToCounter()
  }
  
  
  @IBAction func resetPresad(_ sender: Any) {
    counter = 0
    
    display_laipl.text = counter.description
  }
  
  
  
  func addOneToCounter() {
    // counter = counter  = + 1
    counter += 1
    // Display_laipl.text = "5"
    
    display_laipl.text = counter.description
    print("Number displayd: \(counter)")
  }
  
  
  func discountOneToCounter() {
    if counter != 0 {
      counter -= 1
      
      display_laipl.text = counter.description
      print("Number displayd: \(counter)")
      
    }
  }
  
  
}
