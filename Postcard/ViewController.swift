//
//  ViewController.swift
//  Postcard
//
//  Created by Gonzalo Marqez on 10/2/14.
//  Copyright (c) 2014 Gonzalo Marqez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a comment here to test commits
        messageLabel.hidden = false;
        
        nameLabel.hidden = false;

        nameLabel.text = enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        
        enterNameTextField.text = "";
        
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        
        enterMessageTextField.text = "";

        self.view.endEditing(true);
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }

}

