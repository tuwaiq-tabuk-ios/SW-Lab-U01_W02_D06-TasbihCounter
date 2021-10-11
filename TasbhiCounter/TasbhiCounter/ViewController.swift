//
//  ViewController.swift
//  TasbhiCounter
//
//  Created by A A on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    
  @IBOutlet weak var displayLabel: UILabel!
    // var counter:Int = 0
    var counter:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
  
  @IBAction func substractionPressed(_ sender: UIButton) {
    counter -= 1
    
    displayLabel.text = counter.description
    print("Number displayed: \(counter)")
  }
  
    
    @IBAction func resetPressed(_ sender: UIButton) {
        
        counter = 0
        displayLabel.text = counter.description
        print("Number displayed: \(counter)")
       
    }
    

    @IBAction func counterPressed(_ sender: UIButton) {
        addOneToCounter()
        
    }
    
    func addOneToCounter() {
        
        // counter = counter + 1
         counter += 1
        // displayLabel.text = "5"
         displayLabel.text = counter.description
         print("Number displayed: \(counter)")
    }
}

