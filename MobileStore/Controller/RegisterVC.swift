//
//  RegisterVC.swift
//  MobileStore
//
//  Created by Macklin Thomas on 4/13/20.
//  Copyright © 2020 Macklin Thomas. All rights reserved.
//

import UIKit
import Firebase


class RegisterVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPasswordTxt: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var passCheckImage: UIImageView!
    @IBOutlet weak var confirmPassCheckImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        passwordTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        confirmPasswordTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        // Do any additional setup after loading the view.
        
    }
    
    @objc func textFieldDidChange(_ textField: UITextField){
        guard let passTxt = passwordTxt.text else {return}
        
        // If we have started typing in the confirm pass text field.
        if textField == confirmPasswordTxt {
            passCheckImage.isHidden = false
            confirmPassCheckImage.isHidden = false
        } else {
        if passTxt.isEmpty{
            passCheckImage.isHidden = true
            confirmPassCheckImage.isHidden = true
            confirmPasswordTxt.text = ""
            }
        }
        
        // Make it so when the passwords match, the checkmarks turn green.
        if passwordTxt.text == confirmPasswordTxt.text {
            passCheckImage.image = UIImage(named: AppImages.GreenCheck)
            confirmPassCheckImage.image = UIImage(named: AppImages.GreenCheck)
        } else {
            passCheckImage.image = UIImage(named: AppImages.RedCheck)
            confirmPassCheckImage.image = UIImage(named: AppImages.RedCheck)
        }
        
    }
    
    
    @IBAction func registerClicked(_ sender: Any) {
        guard let email = emailTxt.text , email.isNotEmpty ,
            let username = usernameTxt.text , username.isNotEmpty ,
            let password = passwordTxt.text , password.isNotEmpty else {return}
        
        activityIndicator.startAnimating()
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
          
            if let error = error {
                debugPrint(error)
                return
            }
            
            self.activityIndicator.stopAnimating()
            print("Successfully registered new user")
        }
    }
    


}
