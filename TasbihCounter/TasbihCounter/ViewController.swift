//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Shorouq AlAnzi on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var DisplayLabel2: UILabel!
    // var counter : Int = 6
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// هنا هي func //
    
    @IBAction func discountPressed(_ sender: UIButton) {
        subOneToCounter()
    }
    @IBAction func CounterPressed(_ sender: UIButton) {
       addOneToCounter()
    }
    
    @IBAction func ResetButton(_ sender: UIButton) {
        counter = 0
        DisplayLabel2.text = counter.description
    }
    func addOneToCounter(){
       
        counter += 1
        DisplayLabel2.text = counter.description
        
           print("Number display \(counter)")
        
    }
    func subOneToCounter() {
        
        counter -= 1
        if (counter >= 1){
            counter -= 1
            DisplayLabel2.text = counter.description
        }
    }
   func resetOneToCounter(){
       counter = 0
        DisplayLabel2.text = counter.description
       print("Number display : \(counter)")
   }
}
