//
//  ViewController.swift
//  TasbihCounter
//
//  Created by خالد on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var disbplayLabel: UILabel!
    
    
    var Counter = 0
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Discountboutton(_ sender: UIButton) {
        subOneFromCounter()
    }
    
    
    @IBAction func resat(_ sender: UIButton) {
        resetCounter()
    }
    
    
    @IBAction func count(_ sender: UIButton) {
        addOneToCounter()
    }
    
    
    func subOneFromCounter() {
        // counter counter + 1
        if Counter >= (1) {
            Counter -= 1
        }
        
        
        //displayLabel.text = "5"
        disbplayLabel.text = Counter.description
        print ("Number displayed: \(Counter)")
    }
    
    
    func resetCounter (){
        Counter = 0
        disbplayLabel.text = Counter.description
        print ("Number displayed: \(Counter)")
    }
    
    
    func addOneToCounter() {
        // counter counter + 1
        Counter += 1
        //displayLabel.text = "5"
        disbplayLabel.text = Counter.description
        print ("Number displayed: \(Counter)")
    }
    
}
