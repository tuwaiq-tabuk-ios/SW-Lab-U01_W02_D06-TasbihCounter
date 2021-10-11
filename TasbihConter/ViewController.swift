//
//  ViewController.swift
//  TasbihConter
//
//  Created by عبدالعزيز البلوي on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIColorPickerViewControllerDelegate{
  
  
  
  @IBOutlet weak var disPlayLabel: UILabel!
  
  let colorPicker = UIColorPickerViewController()
  var counter = 0
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    colorPicker.delegate = self
    // Do any additional setup after loading the view.
  }
  
  @IBAction func discountPressed(_ sender: UIButton) {
    discountOneToCount()
  }
  
  @IBAction func countarPressed(_ sender: UIButton) {
    addOneToCounter()
  }
  
  
  @IBAction func restPressed(_ sender: UIButton) {
    counter = 0
    disPlayLabel.text = counter.description
    print("Number displayd: \(counter)")
  }
  
  @IBAction func clolrPressed(_ sender: UIButton) {
    
    present(colorPicker, animated: true, completion: nil)
    
    
  }
  
  
  
  func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
    self.view?.backgroundColor = colorPicker.selectedColor
  }
  
  func addOneToCounter (){
    // countre = counter + 1
    counter += 1
    //    displaylable.text = "5"
    disPlayLabel.text = counter.description
    print("Number displayd: \(counter)")
  }
  func discountOneToCount(){
    if counter != 0 {
      counter -= 1
      disPlayLabel.text = counter.description
      print("Number displayd: \(counter)")
    }
  }
  
  
}

