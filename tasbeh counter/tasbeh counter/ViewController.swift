//
//  ViewController.swift
//  tasbeh counter
//
//  Created by hajer . on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var Display_label: UILabel!

    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func counterpressed(_ sender: UIButton) {
        addOneTocounter()
    }
    @IBAction func discountPressed(_ sender: UIButton)
    {
        SubOneTocounter()
    }
    
  
    @IBAction func resetPressed(_ sender: UIButton)
    {
        removeOneTocounter()
    }
    
    func addOneTocounter(){
            counter += 1
            Display_label.text = counter.description
            print("numberdisplayed: /(counter)")
    
   }
    func SubOneTocounter(){
        
        
        
     
        if ( counter > 0 ) {
        counter -= 1
        
    }
        Display_label.text = counter.description
        print("numberdisplayed: /(counter)")
    }
    
    func removeOneTocounter(){
        counter = 0
        Display_label.text = counter.description
        print("numberdisplayed: /(counter)")

    }
    
}

