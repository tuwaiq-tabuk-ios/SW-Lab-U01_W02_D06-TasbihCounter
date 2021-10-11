//
//  ViewController.swift
//  TasbihCounter2
//
//  Created by ABRAR ALQARNI on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var counterButton: UILabel!
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//1 (-1)
    @IBAction func uturnPressed(_ sender: UIButton) {
        
        minusOnePressed()
        
    }
    
//   2 (+1)
    @IBAction func countPressed(_ sender: UIButton) {
        
        addOneToCuntPressed()
    }
    
//    3 (Back to 0)
    
    @IBAction func resetPressed(_ sender: UIButton) {
        resetOnePressed()
    }
    
    func addOneToCuntPressed(){
        counter += 1
        counterButton.text = counter .description
        print ("Number displayed: \(counter)")
}
    func minusOnePressed(){
        if (counter >= 1){
            counter -= 1
            counterButton.text = counter .description
            
        }
    }
    
    func resetOnePressed(){
        counter = 0
        counterButton.text = counter .description
        print ("Number displayed: \(counter)")
    }
    
}


