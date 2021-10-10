//
//  ViewController.swift
//  TasbihConter
//
//  Created by عبدالعزيز البلوي on 04/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIColorPickerViewControllerDelegate{

    
    
    @IBOutlet weak var displaylable: UILabel!
    
    let colorPicker = UIColorPickerViewController()
    
    var counter = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPicker.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func discountpressed(_ sender: UIButton) {
        if counter != 0 {
        counter -= 1
        displaylable.text = counter.description
        print("Number displayd: \(counter)")
        }
    }
    
    @IBAction func contarpressed(_ sender: UIButton) {
    // countre = counter + 1
        counter += 1
        //    displaylable.text = "5"
        displaylable.text = counter.description
        print("Number displayd: \(counter)")
        
    }
   
    
    @IBAction func restpressed(_ sender: UIButton) {
        counter = 0
        displaylable.text = counter.description
        print("Number displayd: \(counter)")
    }
    
    @IBAction func clolrpressed(_ sender: UIButton) {
        
        present(colorPicker, animated: true, completion: nil)
        
        
    }
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        self.view?.backgroundColor = colorPicker.selectedColor
    }
    
    
}

