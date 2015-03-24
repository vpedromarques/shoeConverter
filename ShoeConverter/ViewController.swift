//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Pedro Marques on 24/03/15.
//  Copyright (c) 2015 Pedro Marques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextfield: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!

    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = mensShoeSizeTextfield.text
//        let numberFromTextField = sizeFromTextField.toInt()
//        var integerFromTextField = numberFromTextField!
        
        let sizeFromTextField = mensShoeSizeTextfield.text.toInt()!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        
        // clean inserted value and remove keyboard
        mensShoeSizeTextfield.text = ""
        mensShoeSizeTextfield.resignFirstResponder()
        
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        // clean inserted value and remove keyboard
        womensShoeSizeTextField.text = ""
       womensShoeSizeTextField.resignFirstResponder()
        
        
        
    }
}

