//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Ameera BA on 11/10/2021.
//

import UIKit

class ViewController: UIViewController ,UIColorPickerViewControllerDelegate {

  @IBOutlet weak var TitleName: UILabel!
  
  
  @IBOutlet weak var displaylabel: UILabel!
  
  
  @IBOutlet weak var ViewColor: UIButton!
  var counter = 0
  let ColorPicker = UIColorPickerViewController()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    ColorPicker.delegate = self;
    // Do any additional setup after loading the view.
  }

  @IBAction func DiscountPressed(_ sender: UIButton) {
    if counter != 0{
      counter -= 1
      displaylabel.text = counter.description
      print("Number displayed: \(counter)")
  }
  }
  
  
  @IBAction func countPreased(_ sender: Any) {
    
    counter += 1
    displaylabel.text = counter.description
  }
  
  @IBAction func resetPreased(_ sender: Any) {
    counter = 0
    displaylabel.text = counter.description
    
  }
  
  
  
  
  
  
  
  
  
  
  
}

