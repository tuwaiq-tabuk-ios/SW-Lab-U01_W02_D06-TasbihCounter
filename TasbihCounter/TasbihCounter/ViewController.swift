//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Bushra alatwi on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var displayLabel: UILabel!
  
  var counter = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
  }
  
  
  @IBAction func counterPressed(_ sender: UIButton) {
    addOneToCounter()
    
  }
  
  
  @IBAction func discountPressed(_ sender: UIButton) {
    subOneToCounter()
  }
  
  
  
  @IBAction func resetPressed(_ sender: Any) {
    resetcounter()
    
  }
  
  func subOneToCounter(){
    if counter >= (1) {
      counter -= 1
      displayLabel.text = counter.description
      print ( "Number displayed : \(counter)")
    }
  }
    func addOneToCounter(){
      
        counter += 1
        displayLabel.text = counter.description
        print ( "Number displayed : \(counter)")
      
      
  }
    func resetcounter(){
      
        counter = 0
        displayLabel.text = counter.description
        print ( "Number displayed : \(counter)")
    }
    
  
  
  
}

