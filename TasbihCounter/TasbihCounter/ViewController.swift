//
//  ViewController.swift
//  TasbihCounter
//
//  Created by rasha  on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayCounter: UILabel!
    
    
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func discount(_ sender: UIButton) {
        subtractOnFromCounter()
    }
    
    
    @IBAction func rest(_ sender: UIButton) {
        removeOneFromCounter()
    }
    
    
    @IBAction func count(_ sender: UIButton) {
        addOnToCounter()
    }
    
    
    func addOnToCounter(){
        counter += 1
        displayCounter.text = counter.description
        print("Number displayed: \(counter)")
    }
    
    
    func subtractOnFromCounter(){
        if (counter > 0){
            counter -= 1
        }
        displayCounter.text = counter.description
        print("Number displayed: \(counter)")
    }
    
    
    func removeOneFromCounter(){
        counter = 0
        displayCounter.text = counter.description
        print("Number displayed: \(counter)")
    }
    
    
}

