//
//  ViewController.swift
//  tasbehcounter
//
//  Created by hajer . on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display_label: UILabel!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func resetPressed(_ sender: UIButton) {
        removeFromcounter()    }
    
    
    @IBAction func discountPressed(_ sender: UIButton) {
        subOneFromcounter()    }
    
    
    @IBAction func counterPressed(_ sender: UIButton) {
        addOneTocounter()
        
    }
    
    
    func addOneTocounter(){
        counter += 1
        display_label.text
        =
        counter.description
        print ("numberdisplayed: /(counter)")
    }
    
    func subOneFromcounter(){
        if(counter > 0){
            counter -= 1
        }
        display_label.text = counter.description
        print ("numberdisplayed: /(counter)")
    }
    func removeFromcounter(){
        counter = 0
        display_label.text = counter.description
        print ("numberdisplayed: /(counter)")    }
    
    
}

