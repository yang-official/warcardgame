//
//  ViewController.swift
//  War
//
//  Created by High Sierra on 10/10/17.
//  Copyright © 2017 True Origin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightimageview: UIImageView!
    @IBOutlet weak var leftimageview: UIImageView!
    @IBOutlet weak var leftscorelabel: UILabel!
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    let cardNames = ["card2","card3","card4","card5","card6","card7","card8",
                     "card9","card10","jack","queen","king","ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTap(sender: UIButton) {
        let leftnumber = Int(arc4random_uniform(13))
        let rightnumber = Int(arc4random_uniform(13))
        leftimageview.image = UIImage(named: cardNames[leftnumber])
        rightimageview.image = UIImage(named: cardNames[rightnumber])
        
        if leftnumber > rightnumber {
            leftScore += 1
            leftscorelabel.text = String(leftScore)
        }
        else if rightnumber > leftnumber {
            rightScore += 1
            rightscorelabel.text = String(rightScore)
        }
    }
    
}

