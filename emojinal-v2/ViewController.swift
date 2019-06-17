//
//  ViewController.swift
//  emojinal-v2
//
//  Created by Ashanti Williams on 6/17/19.
//  Copyright © 2019 Ashanti Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        //create the alert
        let tojAlert =  UIAlertController (title: "Wanna hear a joke?", message: "Time flies like an arrow, fruit flies like banana.", preferredStyle: UIAlertController.Style.alert)
        //adding the buttons
        tojAlert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        
        //show the alert
        present(tojAlert, animated: true, completion: nil)
    
    }
    
    
}

