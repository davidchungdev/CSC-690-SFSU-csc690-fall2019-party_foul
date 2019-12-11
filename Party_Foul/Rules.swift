//
//  Rules.swift
//  Party_Foul
//
//  Created by Lance Santos on 12/8/19.
//  Copyright © 2019 Lance Santos. All rights reserved.
//

import UIKit

class Rules: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var ruleText: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
        topView.layer.cornerRadius = 10.0
        
        
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
