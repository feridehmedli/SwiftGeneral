//
//  SecondVC.swift
//  Landmark
//
//  Created by Ferid Ehmedli on 31.05.23.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var landMarkName: UILabel!
    @IBOutlet weak var landMarkImage: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        landMarkName.text = selectedLandmarkName
        landMarkImage.image = selectedLandmarkImage
        
    }
    



}
