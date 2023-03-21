//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for changing image on initial app launch
        // WHO         WHAT    VALUE
//        diceImageView1.image = #imageLiteral(resourceName: "DiceTwo")
//        //for dice image transparency
//        // diceImageView1.alpha = 0.5
//
//        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        print("Button Got Pressed.")
//        diceImageView2.image = #imageLiteral(resourceName: "DiceThree")
//        diceImageView1.image = #imageLiteral(resourceName: "DiceThree")
      
        //print(leftDiceNumber)
        //print(rightDiceNumber)
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        let leftDiceNumber = Int.random(in: 0...5)
        let rightDiceNumber = Int.random(in: 0...5)
        
        diceImageView1.image =  diceArray[leftDiceNumber]
        
        diceImageView2.image = diceArray[rightDiceNumber]
        
//        leftDiceNumber +=  1
//        rightDiceNumber -=  1
        
        if (leftDiceNumber == rightDiceNumber){
            print("Winner!")
        }
        
        print("Left Dice Number:\(rightDiceNumber)")
        print(leftDiceNumber)
        
        //Int.random(in: 0...5)
    }
}

