//
//  ViewController.swift
//  TasbihCounter
//
//  Created by arwa balawi on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var Display: UILabel!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func resetCounter(_ sender: UIButton) {
        resetcounter1()
        
    }
    
    @IBAction func disCounter(_ sender: UIButton) {
        discounter1()
    }
    @IBAction func countButton(_ sender: UIButton) {
        countButton1()
    }
    
    func  countButton1(){
        counter += 1
        Display.text = counter.description
        print("numberdisplayed: \(counter)")
    }
    
    func  discounter1(){
        if (counter > 0) {
            (counter -= 1)
        }
        Display.text = counter.description
        print ("numberdisplayed: \(counter)")
    }
    func resetcounter1(){
        counter = 0
        Display.text = counter.description
        print ("numberdisplayed: \(counter)")
        
    }
    
}




