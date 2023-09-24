//
//  ViewController.swift
//  SegueApp
//
//  Created by Ferid Ehmedli on 23.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var firstScreenLabel: UILabel!
    @IBOutlet weak var UsernameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func viewDidAppear(_ animated: Bool) {
        print("viewDidLoad function called")
    }
    @IBAction func saveButton(_ sender: Any) {
        userName = UsernameTextField.text!
        performSegue(withIdentifier: "toSecondScreen", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondScreen"{
            let destiantionVC = segue.destination as! SecondViewController
            destiantionVC.myName = userName
        }
            
    }
        
    }
    

    


