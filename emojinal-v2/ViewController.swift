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
    //I am hurt that I didn't put Hozier in this list. Will add emoji later just for him <3
    //But I did get to put Lizzo so you win some and you lose some
    let songOptions =
        ["laugh out loud":["'Thrift Shop' \n by \n Macklemore", "'First Place' \n by \n Larray", "Oxford Comma \n by \n Vampire Weekend"],
         "welp":["Baby Shark", "Duck Song", "The Gummy Bear Song"],
         "cowboy":["'Old Town Road' \n by \n Lil Nas X", "'Meant to Be' \n by \n Florida Georgia Line", "'Endlessly' \n by \n Green River Ordinance "],
         "nerdy fun times": ["'Istanbul' \n by \n They Might Be Giants", "'Science is Real' \n by \n They Might Be Giants", "'Rasputin' \n by \n Boney M."],
         "feelin' myself": ["'Truth Hurts' \n by \n Lizzo","'I Like It' \n by \n Cardi B","'Bulletproof' \n by \n La Roux"]
            
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel!.text
        //iteration 3 will kill me. I know it.
        
        let messageOptions = songOptions[emojis[selectedEmotion!]!]!.count
        let emojiMessage = songOptions[emojis[selectedEmotion!]!]?[Int.random(in:0 ... messageOptions-1)]
        
        //create the alert
        let emojiAlert =  UIAlertController (title: "Here's a song!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        //adding the buttons
        //I feel like 3 options is overkill here.
        //Upon further testing, 3 Options is definite overkill, but I'm keeping them here
        //emojiAlert.addAction(UIAlertAction(title: "OMG YASSSS!!!", style: UIAlertAction.Style.default, handler: nil))
        emojiAlert.addAction(UIAlertAction(title: "Thanks!", style: UIAlertAction.Style.default, handler: nil))
       //emojiAlert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil))
        //show the alert
        present(emojiAlert, animated: true, completion: nil)
    }
}

//Final Comment to say something is up with my github, but I don't really know what's happening there. I do know that between iteration 2 and 3, some crazy stuff started happening so I went to github and copied my old iteration 2 code, then I just deleted all of my emojis. So in a weird fit of frustration, I rebuilt my app in like 10 minutes after trying to be an overachiever.
