//
//  CreateViewController.swift
//  PasswordApp
//
//  Created by Tihomir Radev on 7.08.24.
//

import UIKit

class CreateViewController: UIViewController {
    
    @IBOutlet weak var password1Field: UITextField!
    @IBOutlet weak var password2Field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createPasswordButton(_ sender: Any) {
        if password1Field.text!.count > 2 && password1Field.text == password2Field.text {
            PasswordHelper.createPassword(password: password1Field.text!)
            dismiss(animated: true)
            print("Password created!")
        }
    }
    
    @IBAction func deletePasswordButton(_ sender: Any) {
        PasswordHelper.createPassword(password: "")
        dismiss(animated: true)
        print("Password deleted!")
    }
}
