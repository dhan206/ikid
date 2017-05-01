//
//  ViewController.swift
//  iKid
//
//  Created by Derek Han on 4/30/17.
//  Copyright © 2017 Derek Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtLabel: UILabel!
    
    @IBOutlet weak var jokeCard: UIView!
    
    var displayingSetup = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func flipToPunchline(_ sender: Any) {

        var option: UIViewAnimationOptions = .transitionFlipFromRight
        
        if (self.displayingSetup) {
            self.displayingSetup = false
            self.txtLabel.text = "1forrest1!"
            option = .transitionFlipFromRight
        } else {
            self.displayingSetup = true
            self.txtLabel.text = "What is Forrest Gump's Password?"
            option = .transitionFlipFromLeft
        }
        
        UIView.transition(with: self.jokeCard, duration: 0.8, options: option, animations: nil, completion: nil)
    }
}

