//
//  LogInViewController.swift
//  Project
//
//  Created by test1 on 1/5/20.
//  Copyright © 2020 test1. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var UserNameText: UITextField!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    @IBOutlet weak var LogInButton: UIButton!
    @IBOutlet weak var PasswordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpElements()

      
    }
    
    func SetUpElements(){
        
              Utilities.styleTextField(UserNameText)
              Utilities.styleTextField(PasswordText)
              Utilities.styleFilledButton(LogInButton)
        
    }
    


}
