//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Aisha Ali on 10/10/21.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var count = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func discountPressed(_ sender: UIButton) {
        subCounter()
        
    }
    
    @IBAction func counterReset(_ sender: UIButton) {
        
                
//                let alert = UIAlertController(title: "Warning", message: "The Counter has already been reset", preferredStyle: .alert)
//                alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
//
////            else if (count != 0)
////            {
////                let alert = UIAlertController(title: "Reset Counter ", message: "Are you sure you want to reset the Counter", preferredStyle: .alert)
////            }
        resetCounter()
        
    }
    @IBAction func counterPressed(_ sender: UIButton) {
        addCounter()
        
        
    }
    
    //add One To Counter
    func addCounter ()
    {
        count+=1
        displayLabel.text = count.description
    }
    
    // Minus One From Counter
    func subCounter (){
        count-=1
        if (count <= 0){
            count = 0
        }
        displayLabel.text = count.description
        print("The result of Sub the Counter is: \(count)")

        

    }
    // Reset Counter
    func resetCounter(){
        
       /* if (count != 0 ){
            count = 0
        }
        */
        count = 0 
        displayLabel.text = count.description
        print("The result of Reset the Counter is: \(count)")
    }
}

