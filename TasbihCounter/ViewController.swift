//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Ahmed awadh alqhtani on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var diplayCountLabel : UILabel!
  
  var counter = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func DiscountButton(_ sender: UIButton) {
    
    if counter != 0 {
      counter -= 1
      diplayCountLabel.text = counter.description
      print("Number displayed \(counter)")
    }
    
  }
  
  @IBAction func ResetButton(_ sender: UIButton){
    
    
    counter = 0
    
    diplayCountLabel.text = counter.description
  }
  
  
  
  
  
  @IBAction func countButtonPressed(_ sender: UIButton) {
    print(#function)
    addOneToCounter()
  }
  
  
  func addOneToCounter() {
    counter += 1
    
    diplayCountLabel.text = counter.description
  }
  
}
