//
//  ViewController.swift
//  Dicee
//
//  Created by Vamsi Veeramasu on 9/15/19.
//  Copyright © 2019 Vamsi Veeramasu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myName = "Vamsi"
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceimageView1: UIImageView! //Interface builder outlet
    @IBOutlet weak var diceimageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages() //To randomize dice faces upon loading up of the app
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceimageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceimageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}

