//
//  ViewController.swift
//  PasswordApp
//
//  Created by Tihomir Radev on 7.08.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if PasswordHelper.passwordExists() {
            passwordField.alpha = 1
            createButton.setTitle("Edit password", for: .normal)
        } else {
            passwordField.alpha = 0
            createButton.setTitle("Create password", for: .normal)
        }
    }

    @IBAction func continuteButtonAction(_ sender: Any) {
        if PasswordHelper.passwordExists() {
            let password = PasswordHelper.loadPassword()
            if passwordField.text == password {
                performSegue(withIdentifier: "OpenApp", sender: self)
                passwordField.text = ""
            } else {
                print("Wrong password!")
            }
        } else {
            performSegue(withIdentifier: "OpenApp", sender: self)
        }
    }
    
    @IBAction func createButtonAction(_ sender: Any) {
        if PasswordHelper.passwordExists() {
            let password = PasswordHelper.loadPassword()
            if passwordField.text == password {
                performSegue(withIdentifier: "OpenCreate", sender: self)
                passwordField.text = ""
            } else {
                print("Wrong password!")
            }
        } else {
            performSegue(withIdentifier: "OpenCreate", sender: self)
        }
    }
}

