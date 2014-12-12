//
//  ViewController.swift
//  Postcard
//
//  Created by Giorgos Eleftheriou on 10/12/14.
//  Copyright (c) 2014 Giorgos Eleftheriou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        // Make unhidden the hiden label
        messageLabel.hidden = false
        
        //take the contet of messageLabel and add it to enterMessageTextField
        messageLabel.text = enterMessageTextField.text
        
        //change the color of characters in messageLabel
        messageLabel.textColor = UIColor.redColor()
        
        //after the button click the content of the enterMessage removed
        enterMessageTextField.text = ""
        
        //the first responder in that case the keyboard to make it disappear
        enterMessageTextField.resignFirstResponder()
        
        //change the name of the button after it pressed normal parameter can be change is depend when you want the button to be change for example if its highlighted etc
        mailButton.setTitle("Mail Send", forState: UIControlState.Normal)
        
        
        
    }


}

