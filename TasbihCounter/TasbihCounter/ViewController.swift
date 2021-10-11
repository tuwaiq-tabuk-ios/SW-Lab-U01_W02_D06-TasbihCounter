//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Ressam Al-Thebailah on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var displayLabel: UILabel!
  
  // var counter: int = 0
  var counter = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func discountPressed(_ sender: UIButton) {
    
    subOneToCounter()
  }
  
  
  @IBAction func counterPressed(_ sender: UIButton) {
    counter = 0
    displayLabel.text = counter.description
    print ("Number displayed : \(counter)")
  }
  
  
  func addOneToCounter () {
    
    //counter = counter + 1
    counter += 1
    //displayLabel.text = " 5 "
    displayLabel.text = counter.description
    
    print ( "Number displayed : \(counter) ")
    
  }
  
  
  func subOneToCounter () {
    if counter >= 1 {
      counter -= 1
      displayLabel.text = counter.description
      print ("Number displayed : \(counter)")
    }
    
  }
  
  
  @IBAction func addCounterPressed(_ sender: Any) {
    addOneToCounter()
  }
}
