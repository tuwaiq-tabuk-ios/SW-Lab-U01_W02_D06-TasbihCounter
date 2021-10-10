//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Reema Mousa on 04/03/1443 AH.
//

import UIKit
import UserNotifications


class ViewController: UIViewController {
    
@IBOutlet weak var displaylabel: UILabel!
    var counter = 0

    
        override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
            
    }
    
    
    
    
    @IBAction func resetpressed(_ sender: UIButton) {
        
            displaylabel.text = String(0)
        
        
        
        
        
        
        
        
    }
    
    
    
  
    @IBAction func discountpressed(_ sender:UIButton) {
        counter -= 1
        
        if (counter <= 0 )
        {
            counter=0
        }
        displaylabel.text = counter.description
        print("numberdisplayed: \(counter)")
        
        
        
        
    }
    
    
    @IBAction func counterpressed(_ sender: UIButton) {
        
        counter += 1
        //displaylabel.text  = " 5 "
        displaylabel.text = counter.description
        print("numberdisplayed: \(counter)")
    }
    
}

