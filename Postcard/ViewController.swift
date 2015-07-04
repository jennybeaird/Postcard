//
//  ViewController.swift
//  Postcard
//
//  Created by Jenny Beaird on 7/3/15.
//  Copyright (c) 2015 Jenny Beaird. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
 
    @IBOutlet weak var messageLabelText: UILabel!
    
    @IBOutlet weak var EnterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
   
    @IBOutlet weak var sendMail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        
        messageLabelText.hidden = false
        messageLabelText.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabelText.textColor = UIColor.redColor()
       sendMail.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }



}

