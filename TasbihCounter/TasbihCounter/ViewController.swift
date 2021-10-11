//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Aisha Ali on 10/10/21.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
  
  @IBOutlet weak var displayLabel: UILabel!
  
  var count = 0
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func discountPressed(_ sender: UIButton) {
    subCounter()
    
  }
  
  @IBAction func counterReset(_ sender: UIButton) {
    resetButtonAlert()
    resetCounter()
    
  }
  
  @IBAction func counterPressed(_ sender: UIButton) {
    addCounter()
    
  }
  
  //add One To Counter
  func addCounter (){
    count+=1
    displayLabel.text = count.description
    print("The result of Counter sum is: \(count)")
  }
  
  // Minus One From Counter
  func subCounter (){
    count-=1
    if (count <= 0){
      count = 0
    }
    displayLabel.text = count.description
    print("The result Counter sub is: \(count)")
  }
  
  // Reset Counter
  func resetCounter(){
    count = 0
    displayLabel.text = count.description
    print("The result of Reset the Counter is: \(count)")
  }
  func resetButtonAlert(){
    if (count == 0)
    {
      let resetAlert:UIAlertController = UIAlertController(title: "Warning", message: "The counter has already been reset. ", preferredStyle: UIAlertController.Style.alert)
      let alertAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil)
      resetAlert.addAction(alertAction)
      present(resetAlert, animated: true, completion: nil)
    }
    else {
      let resetAlert:UIAlertController = UIAlertController(title: "Reset Counter", message: "Are you sure you want to reset the counter? ", preferredStyle: UIAlertController.Style.alert)
      let alertAction:UIAlertAction = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler:nil)
      resetAlert.addAction(alertAction)
      present(resetAlert, animated: true, completion: nil)
      
    }
  }
}

