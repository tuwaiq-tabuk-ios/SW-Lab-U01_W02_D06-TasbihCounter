//
//  ViewController.swift
//  TasbihCounterApp
//
//  Created by Maha S on 11/10/2021.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var titleLable: UILabel!
  
  @IBOutlet weak var displayLable: UILabel!
  var counter:Int = 0
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func subtractTap(_ sender: UIButton) {
    
    counter -= 1
    displayLable.text = counter.description
    print("Number display: \(counter)")
  }
  
  
  @IBAction func resetTap(_ sender: UIButton) {
    counter = 0
    displayLable.text = counter.description
    print("Number display: \(counter)")
  }
  
  
  
  @IBAction func countTap(_ sender: UIButton) {
    addOneToCounter()
    
  }
  func addOneToCounter() {
    
    counter += 1
    displayLable.text = counter.description
    print("Number display: \(counter)")
    
  }
}

