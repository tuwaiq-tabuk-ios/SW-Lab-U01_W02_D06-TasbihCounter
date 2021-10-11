//
//  ViewController.swift
//  TasbihCounter
//
//  Created by bushra nazal alatwi on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var displayLabel: UILabel!
    
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func discountPressd(_ sender: UIButton) {
        subOnToCounter()
        
    }
    
    @IBAction func counterPreessd(_ sender: UIButton) {
        addOnToCounter()
    }
    
    @IBAction func reast(_ sender: UIButton) {
        removeOnToCounter()
        
    }
    
    
    func addOnToCounter(){
      counter += 1
        //displayLabel.text = "5"
        displayLabel.text = counter.description
        print("Number displayed:\(counter)")
        
    }
    func subOnToCounter(){
      
        if (counter > 0){
            counter -= 1
            
        }
    
        displayLabel.text = counter.description
        print("Number displayed:\(counter)")
    }
    func removeOnToCounter(){
      counter = 0
        displayLabel.text = counter.description
        print("Number displayed:\(counter)")    }
}

