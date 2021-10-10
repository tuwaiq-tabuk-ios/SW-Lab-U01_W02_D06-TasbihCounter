//
//  ViewController.swift
//  TasbihCounter
//
//  Created by روابي باجعفر on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var displayLabel: UILabel!
  
  //var counter: Int = 0
  var counter = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func discountPressed(_ sender: UIButton) {
    subOneToCounter()
  }
  
  
  @IBAction func ResetPressed(_ sender: UIButton) {
    resetOneToCounter()
  }
  
  @IBAction func counterPressed(_ sender: UIButton) {
    addOneToCounter()
  }
  
  func addOneToCounter() {
    //  counter = counter + 1
    counter += 1
    
    // DisplayLabel.text = "5"
    
    displayLabel.text = counter.description
    print("Number displayed: \(counter)")
    
  }
  
  
  func subOneToCounter(){
    
    if counter >= 1 {
      counter -= 1
    }
    
    displayLabel.text = counter.description
    print("Number displayed: \(counter)")
  }
  
  func resetOneToCounter() {
    counter = 0
    displayLabel.text = counter.description
    print("Number displayed:\(counter)")
  }
  
}
