//
//  DetailsVC.swift
//  Simpsons Book
//
//  Created by Ferid Ehmedli on 01.06.23.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpsons : Simpsons?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpsons?.Name
        jobLabel.text = selectedSimpsons?.Job
        ImageView.image = selectedSimpsons?.Image

        
    }
    


}
