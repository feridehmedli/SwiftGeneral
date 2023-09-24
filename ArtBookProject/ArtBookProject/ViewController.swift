//
//  ViewController.swift
//  ArtBookProject
//
//  Created by Ferid Ehmedli on 03.06.23.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButton))

    }
    @objc func addButton() {
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }

    
}

