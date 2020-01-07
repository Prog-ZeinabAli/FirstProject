//
//  SignUpViewController.swift
//  Project
//
//  Created by test1 on 1/5/20.
//  Copyright © 2020 test1. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {
    
    //ui in view
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var ErrorLabel: UILabel!
    @IBOutlet weak var PasswordText: UITextField!
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var SignUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //call function to set up elements styling
       SetUpElements()
        
    }
    
    func SetUpElements(){
        
               Utilities.styleTextField(UserName)
               Utilities.styleTextField(PasswordText)
               Utilities.styleTextField(EmailText)
               Utilities.styleFilledButton(SignUpButton)
    }
    
    //check if the fields are validated
    func validateFields() -> String?
       {
           //check if the fields arent empty
           if UserName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || PasswordText.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || EmailText.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
                return "يرجى ملئ جميع الحقول !!"
           }
           //check if the password is secure
           let cleanedPassword = PasswordText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
           if Utilities.isPasswordValid(cleanedPassword) == false {
               //password isnt secure
               return "يرجى التحقق من احتواء كلمة المرور على حروف و ارقام و رموز و ان لا يكون طوالها اقل من ٨ "
           }
           return nil
       }
    
    func showError( _ message: String){
          ErrorLabel.text = message
                     ErrorLabel.alpha = 1
      }

        
    @IBAction func SignUpTapped(_ sender: Any) {
        //create the user
     //   Auth.auth().createUser(withEmail: <#T##String#>, password: <#T##String#>) { (result, err) in
            //check for errors
          //  if err != nil {
                //there was an error creating the user
               // self.showError("error creathin the usdrt")
                
          //  }
          //  else{
                // if no error
               //watch code with chris video in minute 1:00:19
           // }
      //  }
        //transition to the home screen
        
        //validate fields
              //  let error = validateFields()
                
                //if error != nil{
               //    showError(error!)
               // }

    }
    

}
