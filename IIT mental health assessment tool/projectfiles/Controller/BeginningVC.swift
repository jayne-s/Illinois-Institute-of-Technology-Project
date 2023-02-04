//
//  BeginningVC.swift
//  Destini-iOS13
//
//  Created by Jayne Srinivas on 2/4/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class BeginningVC: UIViewController {

    @IBOutlet var informationLabel: UILabel!
    //var infolabel = UILabel()
   
    override func viewDidLoad() {
      
    informationLabel.text = "This short test will help determine whether it is necessary for one to seek professional mental health treatment. Please note that this test is intended for informational and entertainment purposes only. It is not a substitute for professional diagnosis or for the treatment of any health condition."
    }
    


}
