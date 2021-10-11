//
//  ViewController.swift
//  TasbihCounter
//
//  Created by macbook air on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var displayLabel: UILabel!
    //var counter: Int = 0
    var counter = 0
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // النسخه الاساسية
        // Do any additional setup after loading the view.
        
    }


    
    @IBAction func discountPressed(_ sender: UIButton) {
        subOneToCounter()
    }
    
  
    @IBAction func counterPressed(_ sender: UIButton) {
        addOneToCounter()
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        resetOneToCounter()
  
    }
    
    
    func addOneToCounter(){
        //  counter = counter + 1
        counter += 1
        //   DisplayLabel1.text = "5"
        displayLabel.text = counter .description
        print("Number displayed: \(counter)")
        
    }
    func subOneToCounter(){
        //  counter = counter + 1
        //counter -= 1
        //   DisplayLabel1.text
    //= "5"
        if (counter >= 1){
            counter -= 1
            displayLabel.text = counter .description
        }
            
        }
        func resetOneToCounter(){
      
           
             counter = 0
            
        displayLabel.text = counter .description
        print("Number displayed: \(counter)")
        
    }
}


