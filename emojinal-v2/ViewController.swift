//
//  ViewController.swift
//  emojinal-v2
//
//  Created by Ashanti Williams on 6/17/19.
//  Copyright © 2019 Ashanti Williams. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😂":"laugh out loud", "🙃":"welp", "🤠":"cowboy", "🤓":"nerdy fun times", "🥰":"feelin' myself"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel!.text
        //create the alert
        let emojiAlert =  UIAlertController (title: "You're so emojinal! \n Here's a song!", message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)
        //adding the buttons
        emojiAlert.addAction(UIAlertAction(title: "OMG YASSSS!!!", style: UIAlertAction.Style.default, handler: nil))
        emojiAlert.addAction(UIAlertAction(title: "Thanks!", style: UIAlertAction.Style.default, handler: nil))
        emojiAlert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil))
        //show the alert
        present(emojiAlert, animated: true, completion: nil)
    }
}


