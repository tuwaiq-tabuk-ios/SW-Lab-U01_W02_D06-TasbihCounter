//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Atheer abdullah on 04/03/1443 AH.
//



import UIKit

@main


class ViewController: UIViewController {

    
    @IBOutlet weak var DisplayLabel: UILabel!
   //var counter : Int = 6

    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    

    
    @IBAction func discountPressed(_ sender: UIButton) {

    subOneToCounter()
    }
    

    @IBAction func counterPressed(_ sender: UIButton) {
        addOneToCounter()
    }
    
  
    @IBAction func resetPressed(_ sender: UIButton) {
        resetOneToCounter()
        }
    
      func addOneToCounter(){
          //  counter = counter + 1
          counter += 1
          //   DisplayLabel1.text = "5"
          DisplayLabel.text = counter .description
          print("Number displayed \(counter)")
          
      }
    
      func subOneToCounter(){
          //  counter = counter + 1
          //counter -= 1
          //   DisplayLabel1.text
          //= "5"
        
      }
          func resetOneToCounter(){
               counter = 0
              
              DisplayLabel.text = counter .description
          print("Number displayed: \(counter)")
          
      }
          
}
