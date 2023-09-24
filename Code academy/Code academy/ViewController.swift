//
//  ViewController.swift
//  Code academy
//
//  Created by Ferid Ehmedli on 30.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }


    @IBAction func SignUp(_ sender: Any) {
    
        if UserName.text ==  "" {
            let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
            
            present(alert, animated: true)
        } else if Password.text == "" {
            let alert = UIAlertController(title: "Error", message: "Password not found", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
            
            present(alert, animated: true)
        } else {
            let alert = UIAlertController(title: "Succes", message: "Ugurlu qeydiyyat", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
            present(alert, animated: true)
        }
        
        
    }
}

