//
//  ViewController.swift
//  LogInTest
//
//  Created by student3 on 9/28/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logInBtn(_ sender: UIButton) {
        let user = username.text
        let pass = password.text
        
        let usernameStored = UserDefaults.standard.string(forKey: "username")
        let passwordStored = UserDefaults.standard.string(forKey: "password")
        
        if usernameStored == user {
            if passwordStored == pass{
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
                let viewController1:ViewController1 = ViewController1()
                viewController1.view.backgroundColor = UIColor.red
                
                self.present(viewController1, animated: true, completion: nil)
        }
    }

}

}
