//
//  ViewController.swift
//  WarGame
//
//  Created by Dan Kass on 3/12/19.
//  Copyright © 2019 Couchguy Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func dealButton(_ sender: Any) {
        
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber {
            //Player Wins
            leftScore += 1
            playerScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            //CPU Wins
            rightScore += 1
            cpuScoreLabel.text = String(rightScore)
        }
        else if rightRandomNumber == leftRandomNumber {
            //Tie
            
        }
        else {
            print("THERE IS AN ISSUE")
            
        }
    }

}

