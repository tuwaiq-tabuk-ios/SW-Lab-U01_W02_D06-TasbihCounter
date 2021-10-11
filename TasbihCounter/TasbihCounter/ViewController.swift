//
//  ViewController.swift
//  TasbihCounter
//
//  Created by Marzoog Almoklif on 04/03/1443 AH.
//  Copyright © 1443 Marzoog Almoklif. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
    
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var target_Button: UIButton!
    @IBOutlet weak var discountButton: UIButton!
    @IBOutlet weak var countButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var viewItems: UIView!
    
    
    var displayTarget = ""
    
    var redColor = false
    var blueColor = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //    Target_Button.setTitle("0", for: .normal)
    }
    
    @IBAction func targetButtonPreased(_ sender: Any) {
        
        //        print("Target Button Taped!")
        let alert = UIAlertController(title: "Target", message: "Please set the desired value for alert:", preferredStyle: .alert)
        
        
        alert.addTextField { (textField) in
            textField.text = "0"
        }
        
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0]
            self.target_Button.setTitle(textField!.text!, for: .normal)
            self.displayTarget = textField!.text!
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func discountButtonPreased(_ sender: Any) {
        print("Discount Button Taped!")
        discountOneToCounter()
    }
    
    @IBAction func resetButtonPreased(_ sender: Any) {
        print("Reset Button Taped!")
        displayLabel.text = "0"
    }
    
    
    @IBAction func countButtonPreased(_ sender: Any) {
        addOneToCounter()
    }
    
    
    @IBAction func colorButtonPreased(_ sender: Any) {
        colorDark()
    }
    
    
    @IBAction func dissmisViewPreased(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    func checkTarget(_ count: Int) {
        if count == Int(displayTarget) {
            let alert = UIAlertController(
                title: "Target",
                message: "The Count Equal the target number \(displayTarget)",
                preferredStyle: .alert
            )
            
            self.present(alert, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    
    func addOneToCounter () {
        //        print("Count Button Taped!")
        let OldCount = Int(displayLabel.text!)
        
        displayLabel.text = String(OldCount! + 1)
        checkTarget(OldCount! + 1)
    }
    
    
    func discountOneToCounter () {
        let OldCount = Int(displayLabel.text!)
        
        if OldCount != 0 {
            displayLabel.text = String(OldCount! - 1)
        }
    }
    
    
    func colorDark() {
        if !redColor {
            redColor = true
            viewItems.backgroundColor = UIColor(hex: 0x4b2c20)
            self.view.backgroundColor = UIColor(hex: 0x795548)
            displayLabel.textColor = UIColor(hex: 0x795548)
            target_Button.titleLabel?.textColor = UIColor(hex: 0x4b2c20)
            discountButton.tintColor = UIColor(hex: 0x795548)
            countButton.tintColor = UIColor(hex: 0x795548)
            resetButton.tintColor = UIColor(hex: 0x795548)
            colorButton.tintColor = UIColor(hex: 0x4b2c20)
            infoButton.tintColor = UIColor(hex: 0x4b2c20)
            
        }else if !blueColor {
            blueColor = true
            viewItems.backgroundColor = UIColor(hex: 0x1c313a)
            self.view.backgroundColor = UIColor(hex: 0x455a64)
            displayLabel.textColor = UIColor(hex: 0x455a64)
            target_Button.titleLabel?.textColor = UIColor(hex: 0x1c313a)
            discountButton.tintColor = UIColor(hex: 0x455a64)
            countButton.tintColor = UIColor(hex: 0x455a64)
            resetButton.tintColor = UIColor(hex: 0x455a64)
            colorButton.tintColor = UIColor(hex: 0x1c313a)
            infoButton.tintColor = UIColor(hex: 0x1c313a)
        }else{
            redColor = false
            blueColor = false
            viewItems.backgroundColor = UIColor(hex: 0xad0018)
            self.view.backgroundColor = UIColor(hex: 0xe63f3f)
            displayLabel.textColor = UIColor(hex: 0xe63f3f)
            target_Button.titleLabel?.textColor = UIColor(hex: 0xad0018)
            discountButton.tintColor = UIColor(hex: 0xe63f3f)
            countButton.tintColor = UIColor(hex: 0xe63f3f)
            resetButton.tintColor = UIColor(hex: 0xe63f3f)
            colorButton.tintColor = UIColor(hex: 0xad0018)
            infoButton.tintColor = UIColor(hex: 0xad0018)
            
            
        }
    }
    
}

