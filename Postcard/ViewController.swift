//
//  ViewController.swift
//  Postcard
//
//  Created by ANIL PACHHAI on 2/24/15.
//  Copyright (c) 2015 Palpa Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var message2Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding comment soon
        messageLabel.hidden=false
        message2Label.hidden=false
        messageLabel.text = enterMessageTextField.text
        message2Label.text = enterNameTextField.text
        messageLabel.textColor=UIColor.redColor()
        message2Label.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }


}

