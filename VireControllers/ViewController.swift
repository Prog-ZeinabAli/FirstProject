//
//  ViewController.swift
//  Project
//
//  Created by test1 on 1/5/20.
//  Copyright © 2020 test1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LogInButton: UIButton!
    @IBOutlet weak var SignUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        SetUpElements()
      
    }

    
    func SetUpElements(){
              Utilities.styleFilledButton(LogInButton)
              Utilities.styleHollowButton(SignUpButton)
    }

}

