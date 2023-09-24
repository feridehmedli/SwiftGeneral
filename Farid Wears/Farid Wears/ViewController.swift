//
//  ViewController.swift
//  Farid Wears
//
//  Created by Ferid Ehmedli on 01.06.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var priceLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        
    }

    @IBAction func priceButton(_ sender: Any) {
        
        let myPrice = "50 manat"
        
        priceLabel.text = "Qiymət : \(myPrice)"
        
    }
    
}

