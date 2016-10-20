//
//  RegisterViewController.swift
//  LogInTest
//
//  Created by student3 on 9/28/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerButton(_ sender: UIButton) {
        
        let username = usernameTextField.text!
        let password = passwordTextField.text!
        let repeatPassword = repeatTextField.text!
        
        if (username.isEmpty || password.isEmpty || repeatPassword.isEmpty){
            
            displayAlertMessage("All fields are required")
            
            return
        }
        
        if (password != repeatPassword){
            displayAlertMessage("Passwords do not match")

            return
        }
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(password, forKey: "password")
        UserDefaults.standard.synchronize()
        
        
        let alert = UIAlertController(title: "Alert", message: "Registered!", preferredStyle: UIAlertControllerStyle.alert)

        let  okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default){ action in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func displayAlertMessage(_ userMessage:String){
        
        let alert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        
        let  okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
        
    }
}
