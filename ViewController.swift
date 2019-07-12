//
//  ViewController.swift
//  emojionalApp
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["🏊‍♀️": "Swimming", "🚣‍♀️": "Rowing", "🏃‍♀️" : "Running","⛹️‍♀️":"Basketball"]
    var facts = ["Swimming" : "yum water", "Rowing" : "ew water","Running":"yas shin splints", "Basketball":"Troy Bolton"]
    
    @IBAction func showMessage(sender:UIButton){
        //if user clicks button, show alert that has something to do with that sport
        let selectedSport = sender.titleLabel?.text
        let emojiFact = facts[emojis[selectedSport!]!]
        
        let alertController = UIAlertController(title: emojis[selectedSport!], message: emojiFact, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        alertController.addAction(UIAlertAction(title: "BYE", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }

    
}

