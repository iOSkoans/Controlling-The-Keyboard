//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Calvin Cheng on 28/2/15.
//  Copyright (c) 2015 Hello HQ Pte Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var entry: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        
        self.result.text = entry.text
        if entry.text.isEmpty {
            
            println("no value provided")
            self.result.text = "Please provide a value"
        }
        
    }

    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.entry.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
    
        return true
    }

}

