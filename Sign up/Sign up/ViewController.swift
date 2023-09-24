//
//  ViewController.swift
//  Sign up
//
//  Created by Ferid Ehmedli on 02.06.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func button(_ sender: Any) {
        
        if userName.text == "" {
            
            let alert = UIAlertController(title: "Error", message: "Username daxil etmemisiniz", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel))
            self.present(alert , animated: true)
            
        } else if passWord.text == "" {
            
            let alert = UIAlertController(title: "Error", message: "Parol daxil etmemisiniz", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel))
            self.present(alert , animated: true)
            
        } else {
            
            let _: Void = performSegue(withIdentifier: "toSecondVC", sender: nil)
            
            
        }
        
      
            
         
            
        }
       

    }
        
        
    
    
    


