//
//  KingGuidePopUpVC.swift
//  Party_Foul
//
//  Created by Lance Santos on 12/11/19.
//  Copyright © 2019 Lance Santos. All rights reserved.
//

import UIKit

class KingGuidePopUpVC: UIViewController {
    @IBOutlet var kingBackgroundView: UIView!
    @IBOutlet weak var kingTopView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        kingTopView.layer.cornerRadius = 10.0

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
