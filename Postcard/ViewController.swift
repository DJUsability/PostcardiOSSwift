//
//  ViewController.swift
//  Postcard
//
//  Created by Dagny Jackson on 2014-11-14.
//  Copyright (c) 2014 Dagny Jackson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    @IBOutlet weak var messageTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sendMailButton.setTitleColor(UIColor(red:0.25,green:0.145,blue:0.059,alpha:0.25), forState: .Disabled)
        sendMailButton.setTitleColor(UIColor(red:0.25,green:0.145,blue:0.059,alpha:1.0), forState: .Normal)
        sendMailButton.enabled = false
        sendMailButton.backgroundColor = UIColor(red:1.0,green:0.5,blue:0.0,alpha:0.10)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nameTextFieldChanged(sender: AnyObject) {
        
        if (!enterNameTextField.text.isEmpty || !enterMessageTextField.text.isEmpty) {
            sendMailButton.enabled = true
            sendMailButton.backgroundColor = UIColor(red:1.0,green:0.5,blue:0.0,alpha:1.0)

        }
        else
        {
            sendMailButton.enabled = false
            sendMailButton.backgroundColor = UIColor(red:1.0,green:0.5,blue:0.0,alpha:0.10)
        }
    }
    
    @IBAction func messageTextFieldChanged(sender: AnyObject) {
        if (!enterMessageTextField.text.isEmpty || !enterNameTextField.text.isEmpty) {
            sendMailButton.enabled = true
            sendMailButton.backgroundColor = UIColor(red:1.0,green:0.5,blue:0.0,alpha:1.0)
            
        }
        else
        {
            sendMailButton.enabled = false
            sendMailButton.backgroundColor = UIColor(red:1.0,green:0.5,blue:0.0,alpha:0.10)
        }
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        nameLabel.text = enterNameTextField.text.isEmpty
        ? "To whom it may concern,"
        : "Dear " + enterNameTextField.text + ","
        
        nameLabel.hidden = false
        
        messageTextView.text = enterMessageTextField.text.isEmpty
            ? "No message included"
            : enterMessageTextField.text
        
        messageTextView.alpha = 1.0
        
        //clear the text in the field
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        
        //make keyboard go away, but losing focus to the text field
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        
        //change text of button after pressed
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        sendMailButton.enabled = false
        sendMailButton.backgroundColor = UIColor(red:1.0,green:0.5,blue:0.0,alpha:0.10)
        
        //Adding a comment here to test commits
    }
    
}

