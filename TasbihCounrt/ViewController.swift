//
//  ViewController.swift
//  TasbihCounrt
//
//  Created by محمد العطوي on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Zero: UILabel!
    
    var counter = 0
  
   let colorpicker = UIColorPickerViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LeftButton(_ sender:
                              UIButton) {
        
        if counter != 0
            
        
        {
            
            
                
                counter -= 1
            
                Zero.text = counter.description
            
            print(" Number\(counter)")
        
        }
    }
    @IBAction func colorButton(_ sender: Any) {
        
    }
    @IBAction func RightButton(_ sender: UIButton) {
        counter = 0
    
        Zero.text = counter.description
        
        
    }
    
    @IBAction func LoopButton(_ sender: UIButton) {
        counter += 1
    //     Zero.text = "5"
        
        Zero.text = counter.description
        
        print(" Number\(String(describing: Zero.text))")
        
        
        
        
    }
    
}
 
