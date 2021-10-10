//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Mohammed on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UIColorPickerViewControllerDelegate{
    
 @IBOutlet weak var DisplayLabel: UILabel!
    //var counter: Int = 0
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var viewColor: UIView!
    
    var counter = 0
    let ColorPicker = UIColorPickerViewController()

    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ColorPicker.delegate = self;
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DiscountPressed(_ sender: UIButton) {
        if counter != 0 {
            counter -= 1
        DisplayLabel.text = counter.description
        print("Number displayed: \(counter)")
        }
    }
      
    
    
    
    @IBAction func CountPressed(_ sender: UIButton) {
        addOneToCounter()
    
    }
    
    
    func addOneToCounter() {
    //    counter = counter + 1
        counter += 1
    //    displayLebal.text = "5"
        
        DisplayLabel.text = counter.description
        print("Number displayed\(counter)")
    }
    
    
    @IBAction func RestartButton(_ sender: Any) {
        counter = 0
        DisplayLabel.text = counter.description
    }
    
    
    
    
    
    @IBAction func ColourButton(_ sender: UIButton) {
       
        self.present(ColorPicker, animated: true, completion: nil)
        //TitleLabel.textColor = ColorPicker.selectedColor
    }
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        self.view.backgroundColor = ColorPicker.selectedColor
        viewColor.backgroundColor = ColorPicker.selectedColor
  
    
    }
}










