//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Maha S on 11/10/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLable: UILabel!
    

    @IBOutlet weak var displayLable:
    UILabel!
    // var counter: int = 0
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tapDiscount(_ sender: UIButton) {
        
        counter -= 1
        displayLable.text = counter.description
        print("Number displayed: \(counter)")
    }
    
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        counter = 0
        displayLable.text = counter.description
        print("Number displayed: \(counter)")
    
        
      }
    
    
    
    @IBAction func counterButtonPressed(_ sender: UIButton) {
        addOneToCounter()
        
    }
    
    func addOneToCounter() {
    // counter = counter + 1
    
    counter += 1
        // displayLable.text = "5"
        displayLable.text = counter.description
        print("Number displayed: \(counter)")

}

}
