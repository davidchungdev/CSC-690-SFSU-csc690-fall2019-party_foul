//
//  Rules.swift
//  Party_Foul
//
//  Created by Lance Santos on 12/8/19.
//  Copyright © 2019 Lance Santos. All rights reserved.
//

import UIKit

class Rules: UIViewController, UIPopoverPresentationControllerDelegate {
    
    @IBOutlet var ruleGuideView: UIView!
    @IBOutlet weak var aceGuide: UIButton!
    @IBOutlet weak var twoGuide: UIButton!
    @IBOutlet weak var threeGuide: UIButton!
    @IBOutlet weak var fourGuide: UIButton!
    @IBOutlet weak var fiveGuide: UIButton!
    @IBOutlet weak var sixGuide: UIButton!
    @IBOutlet weak var sevenGuide: UIButton!
    @IBOutlet weak var eightGuide: UIButton!
    @IBOutlet weak var nineGuide: UIButton!
    @IBOutlet weak var tenGuide: UIButton!
    @IBOutlet weak var jackGuide: UIButton!
    @IBOutlet weak var queenGuide: UIButton!
    @IBOutlet weak var kingGuide: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //Method that tells where the segue should go for what card button
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "acePopUp" {
            let pvc: AceGuidePopUpVC = segue.destination as! AceGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = aceGuide
            presentationViewController?.sourceRect = aceGuide.bounds
        } else if segue.identifier == "twoPopUp" {
            let pvc: TwoGuidePopUpVC = segue.destination as! TwoGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = twoGuide
            presentationViewController?.sourceRect = twoGuide.bounds
        } else if segue.identifier == "threePopUp" {
            let pvc: ThreeGuidePopUpVC = segue.destination as! ThreeGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = threeGuide
            presentationViewController?.sourceRect = threeGuide.bounds
        } else if segue.identifier == "fourPopUp" {
            let pvc: FourGuidePopUpVC = segue.destination as! FourGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = fourGuide
            presentationViewController?.sourceRect = fourGuide.bounds
        } else if segue.identifier == "fivePopUp" {
            let pvc: FiveGuidePopUpVC = segue.destination as! FiveGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = fiveGuide
            presentationViewController?.sourceRect = fiveGuide.bounds
        } else if segue.identifier == "sixPopUp" {
            let pvc: SixGuidePopUpVC = segue.destination as! SixGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = sixGuide
            presentationViewController?.sourceRect = sixGuide.bounds
        } else if segue.identifier == "sevenPopUp" {
            let pvc: SevenGuidePopUpVC = segue.destination as! SevenGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = sevenGuide
            presentationViewController?.sourceRect = sevenGuide.bounds
        } else if segue.identifier == "eightPopUp" {
            let pvc: EightGuidePopUpVC = segue.destination as! EightGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = eightGuide
            presentationViewController?.sourceRect = eightGuide.bounds
        } else if segue.identifier == "ninePopUp" {
            let pvc: NineGuidePopUpVC = segue.destination as! NineGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = nineGuide
            presentationViewController?.sourceRect = nineGuide.bounds
        } else if segue.identifier == "tenPopUp" {
            let pvc: TenGuidePopUpVC = segue.destination as! TenGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = tenGuide
            presentationViewController?.sourceRect = tenGuide.bounds
        } else if segue.identifier == "jackPopUp" {
            let pvc: JackGuidePopUpVC = segue.destination as! JackGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = jackGuide
            presentationViewController?.sourceRect = jackGuide.bounds
        } else if segue.identifier == "queenPopUp" {
            let pvc: QueenGuidePopUpVC = segue.destination as! QueenGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = queenGuide
            presentationViewController?.sourceRect = queenGuide.bounds
        } else if segue.identifier == "kingPopUp" {
            let pvc: KingGuidePopUpVC = segue.destination as! KingGuidePopUpVC
            pvc.popoverPresentationController?.backgroundColor = UIColor.darkGray
            pvc.popoverPresentationController!.delegate = self
            
            let presentationViewController = pvc.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = kingGuide
            presentationViewController?.sourceRect = kingGuide.bounds
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
