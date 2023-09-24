//
//  ViewController.swift
//  Gesture
//
//  Created by Ferid Ehmedli on 26.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var HomerLabel: UILabel!
    var isHomer = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic(){
        
        
        if isHomer {
            imageView.image = UIImage(named:"90")
            HomerLabel.text = "Marge Simpson"
            isHomer = false
        } else {
            imageView.image = UIImage(named:"simpsons")
            HomerLabel.text = "Homer Simpson"
            isHomer = true
        }
    }

}

