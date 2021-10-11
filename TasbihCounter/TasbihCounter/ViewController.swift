//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Mohammed on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UIColorPickerViewControllerDelegate{
  
  @IBOutlet weak var displayLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  
  
  var counter = 0
  let colorPicker = UIColorPickerViewController()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    colorPicker.delegate = self;
  }
  
  @IBAction func discountButton(_ sender: UIButton) {
    if counter != 0 {
      counter -= 1
      displayLabel.text = counter.description
      print("Number displayed: \(counter)")
    }
  }
  
  @IBAction func countButton(_ sender: UIButton) {
    addOneToCounter()
  }
  
  
  @IBAction func restartButton(_ sender: Any) {
    counter = 0
    displayLabel.text = counter.description
  }
  
  
  @IBAction func colourButton(_ sender: UIButton) {
    self.present(colorPicker, animated: true, completion: nil)
  }
  
  
  func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
    self.view.backgroundColor = colorPicker.selectedColor
  }
  
  
  func discountOnefromCounter() {
    if counter != 0 {
      counter -= 1
      displayLabel.text = counter.description
      print("Number displayed: \(counter)")
    }
  }
  
  
  func addOneToCounter() {
    counter += 1
    
    displayLabel.text = counter.description
    print("Number displayed\(counter)")
  }
  
  
  func resetCounter() {
    counter = 0
    displayLabel.text = counter.description
  }
  
  
  func colourButton() {
    
    self.present(colorPicker, animated: true, completion: nil)
  }

}

