//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // Variables for logic
    let diceOptions  = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = UIImage(imageLiteralResourceName: diceOptions[leftDiceNumber])
        diceImageView2.image = UIImage(imageLiteralResourceName: diceOptions[rightDiceNumber])
    }


    // Generate random values between 0 and 5
    @IBAction func rolButtonPressed(_ sender: UIButton) {
        let randomLeftNumber = Int.random(in: 0...5);
        let randomRightNumber = Int.random(in: 0...5);
        
        diceImageView1.image = UIImage(imageLiteralResourceName: diceOptions[randomLeftNumber])
        diceImageView2.image = UIImage(imageLiteralResourceName: diceOptions[randomRightNumber])
    }
}

