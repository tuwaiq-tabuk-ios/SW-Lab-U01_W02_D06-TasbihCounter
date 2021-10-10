//
//  ViewController.swift
//  TASBIHCOUNTER
//
//  Created by ABRAR ALQARNI on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    
    

    @IBAction func counterPressed(_ sender: UIButton) {
      addOneToCounter()
        
   }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        resetOneToCounter()
        
    }
    
    func addOneToCounter(){
      counter += 1
    displayLabel.text = counter .description
    print("Number displayed: \(counter)")

}

    func subOneToCounter(){
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
