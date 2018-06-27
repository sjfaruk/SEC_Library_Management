//
//  LoginViewController.swift
//  SecLibraryManagement
//
//  Created by MOSHIOUR on 5/22/17.
//  Copyright © 2017 Jonny B. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        let userName = "sec"
        let password = "123"
        
        if(userNameTextField.text == userName && passwordTextField.text == password)
        {
                        performSegue(withIdentifier: "login", sender: LoginViewController())
        }
        else{
            userNameTextField.text = ""
            passwordTextField.text = ""

            messageLabel.text = "Incorrect username or password"
        }
    }
   
    
}


