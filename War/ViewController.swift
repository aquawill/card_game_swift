//
//  ViewController.swift
//  War
//
//  Created by Wu, Guan-Ling on 2016/11/15.
//  Copyright © 2016年 Wu, Guan-Ling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var rightScore:Int = 0
    var leftScore:Int = 0
    
    let cardNames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize left number from 0 to 12
        let leftNumber:Int = Int(arc4random_uniform(13))
        
        //Set the left image
        leftImageView.image = UIImage (named: cardNames[leftNumber])
        
        //Randomize right number from 0 to 12
        let rightNumber:Int = Int(arc4random_uniform(13))
        
        //Set the right image
        rightImageView.image = UIImage (named: cardNames[rightNumber])
        
        //Compare the card numbers
        if leftNumber > rightNumber{
            //left card wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber == rightNumber {
            //it's a tie
            
        } else {
            //right card wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
    }
}

