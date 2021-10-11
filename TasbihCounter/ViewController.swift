//
//  ViewController.swift
//  TasbihCounter
//
//  Created by mona M on 10/10/2021.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var displayLable: UILabel!
  
  
  var count :Int = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  

  @IBAction func discountPressed(_ sender: UIButton) {
    discountPressed1()
  }
  
  
  @IBAction func countbutton(_ sender: UIButton) {
    countbutton1()
  }
  
  
  @IBAction func Restbutton(_ sender: UIButton) {
    Restbutton1()
  }
  
  
  func discountPressed1() {
    if count >= 1 {
      count = count - 1
      displayLable.text = count.description
  }
  }
  
    
  func countbutton1(){
      count = count + 1
      displayLable.text = "\(count)"
  
  }
  
  
  func Restbutton1(){
    count = 0
    displayLable.text = "\(count)"
  }
  }





