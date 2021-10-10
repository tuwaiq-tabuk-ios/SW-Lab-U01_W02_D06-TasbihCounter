//
//  ViewController.swift
//  TasbihCounterLite
//
//  Created by azooz alhwiti on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UIColorPickerViewControllerDelegate {

    @IBOutlet weak var DisplayLabel: UILabel!
    let coler = UIColorPickerViewController()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coler.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func CounterPreased(_ sender: Any) {
        
        counter += 1
        
        DisplayLabel.text = counter.description
        
    }
    
    @IBAction func resetPreased(_ sender: Any) {
        counter = 0
        DisplayLabel.text = counter.description
        
        
    }
    
    @IBAction func discountPreased(_ sender: Any) {
        if counter != 0 {
        counter -= 1
        DisplayLabel.text = counter.description
        }
    }
    
    @IBAction func colrpreased(_ sender: UIButton) {
      present(coler,animated: true,completion: nil)
        
    }
    func
    colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        self.view?.backgroundColor = coler.selectedColor
    }
}

