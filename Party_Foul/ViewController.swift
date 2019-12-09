//
//  ViewController.swift
//  Party_Foul
//
//  Created by Lance Santos on 12/3/19.
//  Copyright © 2019 Lance Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    
    var cardNameArray:[String] = ["aceClubs", "aceDiamonds", "aceHearts", "aceSpades", "twoClubs", "twoDiamonds", "twoHearts", "twoSpades", "threeClubs", "threeDiamonds", "threeHearts", "threeSpades", "fourClubs", "fourDiamonds", "fourHearts", "fourSpades", "fiveClubs", "fiveDiamonds", "fiveHearts", "fiveSpades", "sixClubs", "sixDiamonds", "sixHearts", "sixSpades", "sevenClubs", "sevenDiamonds", "sevenHearts", "sevenSpades", "eightClubs", "eightDiamonds", "eightHearts", "eightSpades", "nineClubs", "nineDiamonds", "nineHearts", "nineSpades", "tenClubs", "tenDiamonds", "tenHearts", "tenSpades", "jackClubs", "jackDiamonds", "jackHearts", "jackSpades", "queenClubs", "queenDiamonds", "queenHearts", "queenSpades", "kingClubs", "kingDiamonds", "kingHearts", "kingSpades"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    
    }
    
    //Method for tapCardButton
    @IBAction func cardTapped(_ sender: UIButton) {
        
        //Randomly generates number
        var randomNumber = Int(arc4random_uniform(52))
        
        //Construct a string with a random number
        var cardString: String = self.cardNameArray[randomNumber]
        
        //Set cardView to the asset corresponding to the randomized number
        self.cardImageView.image = UIImage(named: cardString)
        
        //Set of rules that corresponds with each card
        switch randomNumber {
        case 0,1,2,3:
            print("Everyone Drinks!")
        case 4,5,6,7:
            print("You Drink!")
        case 8,9,10,11:
            print("Me Drinks")
        case 12,13,14,15:
            print("Women Drinks")
        case 16,17,18,19:
            print("Drive")
        case 20,21,22,23:
            print("Men Drinks")
        case 24,25,26,27:
            print("Heaven")
        case 28,29,30,31:
            print("Pick a Mate")
        case 32,33,34,35:
            print("Bust a Rhyme")
        case 36,37,38,39:
            print("Make a Rule")
        case 40,41,42,43:
            print("Waterfall")
        case 44,45,46,47:
            print("Categories")
        case 48,49,50,51:
            print("Pour into the Cup")

        default:
            print("Pick a Card")
        }
        
    }
    
    
    //Method for infoButton
    @IBAction func infoTapped(_ sender: UIButton) {
    }
    
}

