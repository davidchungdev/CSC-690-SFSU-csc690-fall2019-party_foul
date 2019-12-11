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
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var ruleButton: UIButton!
    @IBOutlet weak var ruleTextField: UILabel!
    
    var rule : String!
    
    //Array that contains 52 cards
    var cardNameArray:[String] = ["aceClubs", "aceDiamonds", "aceHearts", "aceSpades", "twoClubs", "twoDiamonds", "twoHearts", "twoSpades", "threeClubs", "threeDiamonds", "threeHearts", "threeSpades", "fourClubs", "fourDiamonds", "fourHearts", "fourSpades", "fiveClubs", "fiveDiamonds", "fiveHearts", "fiveSpades", "sixClubs", "sixDiamonds", "sixHearts", "sixSpades", "sevenClubs", "sevenDiamonds", "sevenHearts", "sevenSpades", "eightClubs", "eightDiamonds", "eightHearts", "eightSpades", "nineClubs", "nineDiamonds", "nineHearts", "nineSpades", "tenClubs", "tenDiamonds", "tenHearts", "tenSpades", "jackClubs", "jackDiamonds", "jackHearts", "jackSpades", "queenClubs", "queenDiamonds", "queenHearts", "queenSpades", "kingClubs", "kingDiamonds", "kingHearts", "kingSpades"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //PopUpStuff
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "rulesPopUp" {
            let pvc: Rules = segue.destination as! Rules
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = ruleButton
            presentationViewController?.sourceRect = ruleButton.bounds
        }
    }
    
    func adaptivePresentationStyle(for controller:
        UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
    
    func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        return UINavigationController(rootViewController: controller.presentedViewController)
    }
    
    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
        
        print("Controller did dismiss popover.")
    }
    
    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
        
        print("Controller should dismiss popover.")
        
        return true
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
            self.ruleTextField.text = "Everyone Drinks!"
        case 4,5,6,7:
            self.ruleTextField.text = "You Drink!"
        case 8,9,10,11:
            self.ruleTextField.text = "Me Drinks"
        case 12,13,14,15:
            self.ruleTextField.text = "Women Drinks"
        case 16,17,18,19:
            self.ruleTextField.text = "Drive"
        case 20,21,22,23:
            self.ruleTextField.text = "Men Drinks"
        case 24,25,26,27:
            self.ruleTextField.text = "Heaven"
        case 28,29,30,31:
            self.ruleTextField.text = "Pick a Mate"
        case 32,33,34,35:
            self.ruleTextField.text = "Bust a Rhyme"
        case 36,37,38,39:
            self.ruleTextField.text = "Make a Rule"
        case 40,41,42,43:
            self.ruleTextField.text = "Waterfall"
        case 44,45,46,47:
            self.ruleTextField.text = "Categories"
        case 48,49,50,51:
            self.ruleTextField.text = "Pour into the King's Cup"

        default:
            self.ruleTextField.text = "Pick a Card"
        }
        
    }
    
    //Method for ruleButton
    @IBAction func ruleTapped(_ sender: Any) {

    }
    
    //Method for infoButton
    @IBAction func infoTapped(_ sender: UIButton) {
    }
    
}

