//
//  ViewController.swift
//  TimerProject
//
//  Created by Ferid Ehmedli on 29.05.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    
  var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
   counter = 10
        TimeLabel.text = "Time : \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
   
        
    }
    @objc func timerFunction(){
        TimeLabel.text = "Time : \(counter)"
        counter = counter - 1
        
        if counter == 0 {
            timer.invalidate()
            TimeLabel.text = "Vaxt bitti"
        }
        
    }
    
    @IBAction func Button(_ sender: Any) {
        print("clicked")
    }
    
    }


    
    
    


