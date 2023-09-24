//
//  SecondVC.swift
//  ArtBook
//
//  Created by Ferid Ehmedli on 04.06.23.
//

import UIKit
import CoreData

class SecondVC: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var yearText: UITextField!
  
    //Recognizer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecog = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        view.addGestureRecognizer(gestureRecog)

        imageView.isUserInteractionEnabled = true
        let imageTapRecog = UITapGestureRecognizer(target: self, action: #selector(tapImage))
        imageView.addGestureRecognizer(imageTapRecog)
        
        NotificationCenter.default.post(Notification.Name("newData"))
        
    }
    
    @objc func tapGesture(){
        
        view.endEditing(true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
    }
    

    @IBAction func saveButton(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newPainting = NSEntityDescription.insertNewObject(forEntityName: "Paintings", into: context)
        
        //Attributes
        
        newPainting.setValue(artistText.text!, forKey: "artist")
        newPainting.setValue(nameText.text!, forKey: "name")
        
        if let year = Int(yearText.text!){
            newPainting.setValue(year, forKey: "year")
        }
        
        
        newPainting.setValue(UUID(), forKey: "id")
        
        let data = imageView.image?.jpegData(compressionQuality: 0.5)
        newPainting.setValue(data, forKey: "image")
        
        do {
            try context.save()
            print("succes")
        } catch {
            print("error")
        }
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
    @objc func tapImage(){
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true)
        
        
    }
    


}
