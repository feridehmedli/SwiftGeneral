//
//  ViewController.swift
//  Landmark
//
//  Created by Ferid Ehmedli on 31.05.23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var TableView: UITableView!
    
    var landMarkNames = [String]()
    var landMarkImage = [UIImage]()
    var chosenName = ""
    var chosenImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        
        landMarkNames.append("Maiden Tower")
        landMarkNames.append("Galata Tower")
        
       
        landMarkImage.append(UIImage(named: "maidentower")!)
        landMarkImage.append(UIImage(named: "galatatower")!)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landMarkNames[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenName = landMarkNames[indexPath.row]
        
        chosenImage = landMarkImage[indexPath.row]
        
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! SecondVC
            destinationVC.selectedLandmarkName = chosenName
            destinationVC.selectedLandmarkImage = chosenImage
            
            
        }
  
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            self.landMarkNames.remove(at: indexPath.row)
            self.landMarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
}

