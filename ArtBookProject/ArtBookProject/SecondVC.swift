//
//  SecondVC.swift
//  ArtBookProject
//
//  Created by Ferid Ehmedli on 03.06.23.
//

import UIKit

class SecondVC: UIViewController {
    
    
    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let gestureRecog = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        view.addGestureRecognizer(gestureRecog)
        
    }
    
    @objc func tapGesture(){
        
        view.endEditing(true)
        
    }
    @IBAction func saveButton(_ sender: Any) {
       
        
    }
    
   
    
}
