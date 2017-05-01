//
//  KnockKnockViewController.swift
//  iKid
//
//  Created by Derek Han on 4/30/17.
//  Copyright © 2017 Derek Han. All rights reserved.
//

import UIKit

class KnockKnockViewController: UIViewController {

    
    @IBOutlet weak var KnockKnockJokeCard: UIView!
    
    @IBOutlet weak var txtLabel: UILabel!
    
    @IBOutlet weak var knockImage: UIImageView!
    
    var step: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func flipKnockKnockJoke(_ sender: Any) {
        var option: UIViewAnimationOptions = .transitionFlipFromRight
        if(self.step == 1) {
            self.step += 1
            self.txtLabel.text = "Who's there?"
        } else if (self.step == 2) {
            self.step += 1
            self.txtLabel.text = "Cows go"
            option = .transitionFlipFromLeft
        } else if (self.step == 3) {
            self.step += 1
            self.txtLabel.text = "Cows go who?"
        } else if (self.step == 4) {
            self.step += 1
            self.txtLabel.text = ""
            self.knockImage.image = UIImage.init(named: "cows.png")
            option = .transitionFlipFromLeft
        } else if (self.step == 5) {
            self.step = 1
            self.txtLabel.text = "Knock knock"
            self.knockImage.image = nil
        }
        
        UIView.transition(with: self.KnockKnockJokeCard, duration: 0.8, options: option, animations: nil, completion: nil)
    }

}
