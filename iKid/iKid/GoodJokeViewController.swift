//
//  GoodJokeViewController.swift
//  iKid
//
//  Created by Derek Han on 4/30/17.
//  Copyright © 2017 Derek Han. All rights reserved.
//

import UIKit

// NOTE: this view controller is actually for the pun joke... named it incorrectly and too lazy to change it
class GoodJokeViewController: UIViewController {

    
    @IBOutlet weak var GoodJokeCard: UIView!
    
    @IBOutlet weak var ImageJoke: UIImageView!
    
    @IBOutlet weak var jokeSetupLineOne: UILabel!
    
    @IBOutlet weak var jokeSetupLineTwo: UILabel!
    
    var displayingSetup = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func flipCard(_ sender: Any) {
        var option: UIViewAnimationOptions = .transitionFlipFromRight
        
        if (self.displayingSetup) {
            self.displayingSetup = false
            self.jokeSetupLineOne.text = ""
            self.jokeSetupLineTwo.text = ""
            self.ImageJoke.image = UIImage.init(named: "nightstand.png")
            option = .transitionFlipFromRight
        } else {
            self.displayingSetup = true
            self.jokeSetupLineOne.text = "The furniture store keeps"
            self.jokeSetupLineTwo.text = "calling me to come back."
            self.ImageJoke.image = nil
            option = .transitionFlipFromLeft
        }
        
        UIView.transition(with: self.GoodJokeCard, duration: 0.8, options: option, animations: nil, completion: nil)
    }

}
