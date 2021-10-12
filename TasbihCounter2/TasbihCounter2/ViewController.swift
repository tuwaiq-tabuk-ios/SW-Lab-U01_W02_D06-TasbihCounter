//
//  ViewController.swift
//  TasbihCounter2
//
//  Created by apple on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var counter = 0
    
    
    @IBAction func discounterButton(_sender: Any) {
        subtractOneFromCounter()
    }
    
    @IBAction func Counterpressed(_sender: Any){
        addOneToCounter()
    }
    
   
    @IBAction func resltBottn(_ sender: Any) {
        reslt()
    }
    

    func subtractOneFromCounter(){
        if counter >= (1){
            counter = counter - 1
        }
        displayLabel.text = counter.description
    }
    
    func reslt() {
        counter = 0
        displayLabel.text = counter.description
        displayLabel.text = "\(counter)"
    }
    func addOneToCounter(){
        counter = counter + 1
        displayLabel.text = counter.description
        displayLabel.text = "\(counter)"
    }
}
