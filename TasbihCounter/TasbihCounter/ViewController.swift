//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Yousef Albalawi on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var Display_laipl: UILabel!
    
    // var countr: int = 0
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func discountPreased(_ sender: UIButton) {
        if counter != 0 {
        counter -= 1
        
        Display_laipl.text = counter.description
        print("Number displayd: \(counter)")
    
        }
    }
    
    
    @IBAction func ContarPresad(_ sender: UIButton) {
        
      
            // counter = counter  = + 1
            counter += 1
            // Display_laipl.text = "5"
            
            
            Display_laipl.text = counter.description
            print("Number displayd: \(counter)")
        
        
        
        
    }
    
    
    @IBAction func Rst_Presad(_ sender: Any) {
        counter = 0
        
        Display_laipl.text = counter.description
        
    }
    
  
    }
    


