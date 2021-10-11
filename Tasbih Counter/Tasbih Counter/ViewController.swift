//
//  ViewController.swift
//  Tasbih Counter
//
//  Created by Ameera BA on 11/10/2021.
//

import UIKit

class ViewController: UIViewController {

 
  @IBOutlet weak var titelLabel: UILabel!
  @IBOutlet weak var displayLable: UILabel!
  
  var counter = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  
  @IBAction func disCountPressed(_ sender: UIButton) {
    subtractOneToCounter()
  }
  
  
  @IBAction func resetPressed(_ sender: UIButton) {
    resetCounterToZero()
  }
  
  
  @IBAction func counterPressed(_ sender: UIButton) {
    addOneToCounter()
  }
  
  
  func addOneToCounter(){
    counter += 1
    displayLable.text = counter.description
    print("Number display:\(counter)")
  }
  
  
  func subtractOneToCounter(){
    if counter >= 1{
      counter -= 1
    }
    displayLable.text = counter.description
    print("Number display:\(counter)")
  }
  
  
  func resetCounterToZero(){
    counter = 0
    displayLable.text = counter.description
    print("Number display:\(counter)")
  }
  
  
  
}

