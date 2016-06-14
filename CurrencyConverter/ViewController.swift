//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Lamond Dixon on 6/8/16.
//  Copyright © 2016 Lamond Dixon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
	@IBAction func ClearButton(sender: UIButton)
	{
		inputTextField.text="";
	}

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var poundLabel: UILabel!
    @IBAction func convertCurrency(sender: UIButton){
		
    
		
		

           let poundRate = 0.69
                let yenRate = 113.94
                let euroRate = 0.89
                var dollarAmount = 0.0
                if let amount = Double(inputTextField.text!){
                    dollarAmount = amount
                    do {
                        poundLabel.text = "\(dollarAmount * poundRate)"
                        yenLabel.text = "\(dollarAmount * yenRate)"
                        euroLabel.text = "\(dollarAmount * euroRate)"
                        dollarAmount = 0.0
                    }
                }
            }

            override func viewDidLoad() {
                super.viewDidLoad()
                inputTextField.delegate = self
                // Do any additional setup after loading the view, typically from a nib.
            }
    
    
            
            override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
            }
	// Called when 'return' key is pressed
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
		
	}
	
	
	
	// called when user taps outside the text field
	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
		view.endEditing(true)
	}


	


}