//
//  ViewController.swift
//  birthdayapp
//
//  Created by Ferid Ehmedli on 26.05.23.
//

import UIKit

class ViewController: UIViewController {
    
   

    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var PasswordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(UserName.text, forKey: "NameLabel.text")
        UserDefaults.standard.set(Password.text, forKey: "key")
        
     
    }

   
    
    @IBAction func SaveButton(_ sender: Any) {
        
        NameLabel.text =
       UserName.text
        
        PasswordLabel.text = Password.text
        
        
    }
    
}

