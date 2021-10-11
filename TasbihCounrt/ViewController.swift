//
//  ViewController.swift
//  TasbihCounrt
//
//  Created by محمد العطوي on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    var counter = 0
    let colorpicker = UIColorPickerViewController()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func discountButton(_ sender:
                                  UIButton) {
        discountOneToCounter()
    }
    
    @IBAction func ressetButton(_ sender: UIButton) {
        resetCounter()
    }
    
    @IBAction func counterButton(_ sender: UIButton) {
        addOneToCounter()
    }
    
    
    
    
    func addOneToCounter() {
        counter += 1
        //     Zero.text = "5"
        
        displayLabel.text = counter.description
        
        print(" Number\(String(describing: displayLabel.text))")
    }
    
    
    func discountOneToCounter() {
        if counter != 0
        {
            counter -= 1
            
            displayLabel.text = counter.description
            
            print(" Number\(counter)")
        }
        
    }
    
    
    func resetCounter() {
        counter = 0
        
        displayLabel.text = counter.description
    }
    
    
    
}
