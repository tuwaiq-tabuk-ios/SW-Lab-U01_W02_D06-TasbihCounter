//
//  ViewController.swift
//  TasbihCounterLite
//
//  Created by azooz alhwiti on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UIColorPickerViewControllerDelegate {
  
  @IBOutlet weak var displayLabel: UILabel!
  
  
  let coler = UIColorPickerViewController()
  var counter = 0
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    coler.delegate = self
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func counterPreased(_ sender: Any) {
    addOneToCounter()
  }
  
  @IBAction func resetPreased(_ sender: Any) {
    resetPreased()
  }
  
  @IBAction func discountPreased(_ sender: Any) {
    discountOneToCounter()
  }
  
  @IBAction func colrpreased(_ sender: UIButton) {
    present(coler,animated: true,completion: nil)
    
  }
  
  
  func
  colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
    self.view?.backgroundColor = coler.selectedColor
  }
  
  func addOneToCounter(){
    counter += 1
    
    displayLabel.text = counter.description
  }
  
  func discountOneToCounter(){
    if counter != 0 {
      counter -= 1
      displayLabel.text = counter.description
    }
  }
  
  func resetPreased(){
    counter = 0
    displayLabel.text = counter.description
  }
  
  
  
}

