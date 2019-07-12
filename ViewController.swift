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
    //var facts = ["Swimming" : "yum water", "Rowing" : "ew water","Running":"yas shin splints", "Basketball":"Troy Bolton"]
    var customMessages = [
        "Swimming" : ["yum water", "Olympic sized pools have enough water to take 9,400 baths.","The average swimmer in high school swims one million strokes in a single season."],
        "Rowing" : ["ew water","Rowing is one of the original sports in the modern Olympic Games.","Physiologists claim that rowing a 2,000-meter race – equivalent to 1.25 miles – is equal to playing back-to-back basketball games."],
        "Running":["yas shin splints","The lifespan of runners is typically longer than those who do not run.","Over 1 billion pairs of running shoes are sold worldwide each year."],
        "Basketball":["Troy Bolton","Basketball was played by using a soccer ball until 1929.","Slam dunks were illegal for almost nine years."]
    ]
    
    
    @IBAction func showMessage(sender:UIButton){
        //if user clicks button, show alert that has something to do with that sport
        let number = Int.random(in: 0...2)
        let selectedSport = sender.titleLabel?.text
        //let emojiFact = facts[emojis[selectedSport!]!]
        let emojiMessage = customMessages[emojis[selectedSport!]!]?[number]
        
        let alertController = UIAlertController(title: emojis[selectedSport!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        alertController.addAction(UIAlertAction(title: "BYE", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }

    
}

