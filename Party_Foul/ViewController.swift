//
//  ViewController.swift
//  Party_Foul
//
//  Created by Lance Santos on 12/3/19.
//  Copyright © 2019 Lance Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate{
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var ruleButton: UIButton!
    @IBOutlet weak var ruleTextField: UILabel!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var kingCountView: UIView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var hudDisplay: UIView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var infoIconImage: UIImageView!
    
    var rule : String!
    var cardCounter: Int = 0
    var playerCounter: Int = 9
    var aceCounter: Int = 0
    var twoCounter: Int = 0
    var threeCounter: Int = 0
    var fourCounter: Int = 0
    var fiveCounter: Int = 0
    var sixCounter: Int = 0
    var sevenCounter: Int = 0
    var eightCounter: Int = 0
    var nineCounter: Int = 0
    var tenCounter: Int = 0
    var jackCounter: Int = 0
    var queenCounter: Int = 0
    var kingCounter: Int = 0
    var querstionMaster: String = ""
    var counter: Int = 0
    

    //Empty Array to store cards that are drawn
    var cardDrawnArray:[Int] = []
    
    //Array that contains 52 cards
    var cardNameArray:[String] = ["aceClubs", "aceDiamonds", "aceHearts", "aceSpades", "twoClubs", "twoDiamonds", "twoHearts", "twoSpades", "threeClubs", "threeDiamonds", "threeHearts", "threeSpades", "fourClubs", "fourDiamonds", "fourHearts", "fourSpades", "fiveClubs", "fiveDiamonds", "fiveHearts", "fiveSpades", "sixClubs", "sixDiamonds", "sixHearts", "sixSpades", "sevenClubs", "sevenDiamonds", "sevenHearts", "sevenSpades", "eightClubs", "eightDiamonds", "eightHearts", "eightSpades", "nineClubs", "nineDiamonds", "nineHearts", "nineSpades", "tenClubs", "tenDiamonds", "tenHearts", "tenSpades", "jackClubs", "jackDiamonds", "jackHearts", "jackSpades", "queenClubs", "queenDiamonds", "queenHearts", "queenSpades", "kingClubs", "kingDiamonds", "kingHearts", "kingSpades"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    //Method for tapCardButton
    @IBAction func cardTapped(_ sender: UIButton) {
        
        
        //Randomly generates number
        var randomNumber = Int(arc4random_uniform(52))
        
        //Checks if card already have been drawn
        while cardDrawnArray.contains(randomNumber){
            
            randomNumber = Int(arc4random_uniform(52))
        
        }
        
        
        //Construct a string with a random number
        var cardString: String = self.cardNameArray[randomNumber]
        
        //Set cardView to the asset corresponding to the randomized number
        self.cardImageView.image = UIImage(named: cardString)
        
        
        
        //Set of rules that corresponds with each card
        switch randomNumber {
        case 0,1,2,3:
            self.ruleTextField.text = "Everyone Drinks!"
            aceCounter += 1
        case 4,5,6,7:
            self.ruleTextField.text = "You Drink!"
            twoCounter += 1
        case 8,9,10,11:
            self.ruleTextField.text = "Me Drink!"
            threeCounter += 1
        case 12,13,14,15:
            self.ruleTextField.text = "Women Drink!"
            fourCounter += 1
        case 16,17,18,19:
            self.ruleTextField.text = "Drive!"
            fiveCounter += 1
        case 20,21,22,23:
            self.ruleTextField.text = "Men Drink!"
            sixCounter += 1
        case 24,25,26,27:
            self.ruleTextField.text = "Heaven!"
            sevenCounter += 1
        case 28,29,30,31:
            self.ruleTextField.text = "Pick a Mate!"
            eightCounter += 1
        case 32,33,34,35:
            self.ruleTextField.text = "Make a Rhyme!"
            nineCounter += 1
        case 36,37,38,39:
            self.ruleTextField.text = "Make a Rule!"
            tenCounter += 1
        case 40,41,42,43:
            self.ruleTextField.text = "Waterfall!"
            jackCounter += 1
        case 44,45,46,47:
            self.ruleTextField.text = "Categories!"
            queenCounter += 1
        case 48,49,50,51:
            self.ruleTextField.text = "King's Cup!"
            kingCounter += 1
        default:
            self.ruleTextField.text = "Pick a Card"
        }
        
        //Counts number of cards drawn
        self.cardCounter += 1
        
        //Updates player number
        if cardCounter % playerCounter == 0 {
            self.playerLabel.text = "Player " + String(playerCounter)
        } else {
            self.playerLabel.text = "Player " + String(cardCounter % playerCounter)
        }
        
    
            //Addes to currently drawn cards to array of cards that have been drawn
           cardDrawnArray.append(randomNumber)
      /* counter += 1
       for element in cardDrawnArray{
              print(element)
          }
       print("count: ", String(counter))
        
      */
        
        //Image assets for when the King gets pulled and the beer icon fills up
        if kingCounter == 1 {
            self.beerImageView.image = UIImage(named: "quarterBeer")
        } else if kingCounter == 2{
            self.beerImageView.image = UIImage(named: "halfBeer")
        } else if kingCounter == 3{
            self.beerImageView.image = UIImage(named: "almostBeer")
        } else if kingCounter == 4{
            self.playerLabel.text = "GAME OVER!!"
            self.cardImageView.image = UIImage(named: "fullBeer")
            self.beerImageView.image = UIImage(named: "fullBeer")
            self.ruleTextField.text = ""
        }
    }
    

    
    //Method for ruleButton
    @IBAction func ruleTapped(_ sender: Any) {

    }
    
    //Method for infoButton
    @IBAction func infoTapped(_ sender: UIButton) {
    }
    
}

