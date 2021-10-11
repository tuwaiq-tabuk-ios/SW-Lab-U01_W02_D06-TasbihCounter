//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Reema Mousa on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displaylabel: UILabel!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func resetpressed(_ sender: UIButton) {
        resetpressed()
        
        
    }
    
    @IBAction func discountpressed(_ sender:UIButton) {
        discounter()
    }
    @IBAction func counterpressed(_ sender: UIButton) {
        counterpressed ()
    }
    
    // functions
    //
    func discounter (){
        
        counter = counter - 1
        
        if (counter <= 0 )
        {
            counter = 0
        }
        displaylabel.text = counter.description
        print("numberdisplayed: \(counter)")
    }
    
    //functin 2
    
    func  counterpressed (){
        
        
        counter += 1
        //displaylabel.text  = " 5 "
        displaylabel.text = counter.description
        print("numberdisplayed: \(counter)")
        
    }
    
    func resetpressed(){
        
        counter = 0
        
        displaylabel.text = counter.description
        print("numberdisplayed: \(counter)")
        
        
    }
    
    func nitifireset(){
        
    }
}

