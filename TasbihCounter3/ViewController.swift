//
//  ViewController.swift
//  TasbihCounter3
//
//  Created by Shorouq AlAnzi on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func resetButton(_ sender: UIButton) {
        counter = 0
        DisplayLabel.text = counter.description
    }
    
    
    @IBAction func CounterPressed(_ sender: UIButton) {
        addOneTocounter()
    }
    
    
    @IBAction func discountPressed(_ sender: UIButton) {
        subOneToCounter()
    }
    
    func addOneTocounter(){
        counter += 1
        DisplayLabel.text = counter.description
        print("Number display \(counter)")
    }
    func subOneToCounter(){
        counter -= 1
        if (counter >= 1){
            counter -= 1
            DisplayLabel.text = counter.description
        }
    }
}

