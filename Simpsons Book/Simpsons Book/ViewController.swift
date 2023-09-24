//
//  ViewController.swift
//  Simpsons Book
//
//  Created by Ferid Ehmedli on 01.06.23.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {

    @IBOutlet weak var TableView: UITableView!
    
    var mySimpsons = [Simpsons]()
    var chosenSimpson : Simpsons?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.dataSource = self
        TableView.delegate = self
        
       let Homer = Simpsons(Name: "Homer", Job: "Insdructor", Image: UIImage(named: "HomerSimpson")!)
        let Marge = Simpsons(Name: "Marge", Job: "Teacher", Image: UIImage(named: "marge png")!)
        let Bart = Simpsons(Name: "Bart", Job: "Student", Image: UIImage(named: "bart png")!)
        
        mySimpsons.append(Homer)
        mySimpsons.append(Marge)
        mySimpsons.append(Bart)
        
     
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        var content = cell.defaultContentConfiguration()
        content.text = mySimpsons[indexPath.row].Name
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpsons = chosenSimpson
            
        }
    }
}

