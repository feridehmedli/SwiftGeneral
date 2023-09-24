//
//  ViewController.swift
//  name
//
//  Created by Ferid Ehmedli on 03.06.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveDefault()
      
       
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameLabel.text, forKey: "Name")
        nameLabel.text = "Name : \(nameText.text!)"
     
        
        }
    
    func saveDefault() {
        
       var name = UserDefaults.standard.string(forKey: "Name")
        name = nameLabel.text
        
    }
    
}

