//
//  ViewController.swift
//  KennyGame
//
//  Created by Ferid Ehmedli on 30.05.23.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    var score = 0
    var timer = Timer()
    var counter = 0
    var margeArray = [UIImageView]()
    var timer2 = Timer()
    var highScore = 0
    //Label
    @IBOutlet weak var TimerLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var HighScoreLabel: UILabel!
    //Images
    @IBOutlet weak var marge1: UIImageView!
    @IBOutlet weak var marge2: UIImageView!
    @IBOutlet weak var marge3: UIImageView!
    @IBOutlet weak var marge4: UIImageView!
    @IBOutlet weak var marge5: UIImageView!
    @IBOutlet weak var marge6: UIImageView!
    @IBOutlet weak var marge7: UIImageView!
    @IBOutlet weak var marge8: UIImageView!
    @IBOutlet weak var marge9: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedHighScore = UserDefaults.standard.object(forKey: "highscore")
        if storedHighScore == nil {
            highScore = 0
            HighScoreLabel.text = "High Score : \(highScore)"
        
            
        }
        if let newScore = storedHighScore as? Int {
            highScore = newScore
            HighScoreLabel.text = "High Score : \(highScore)"
        }
        ScoreLabel.text = "Score :\(score)"
        
        marge1.isUserInteractionEnabled = true
        marge2.isUserInteractionEnabled = true
        marge3.isUserInteractionEnabled = true
        marge4.isUserInteractionEnabled = true
        marge5.isUserInteractionEnabled = true
        marge6.isUserInteractionEnabled = true
        marge7.isUserInteractionEnabled = true
        marge8.isUserInteractionEnabled = true
        marge9.isUserInteractionEnabled = true
        
        let recog1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recog2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recog3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recog4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recog5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recog6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recog7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recog8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recog9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        marge1.addGestureRecognizer(recog1)
        marge2.addGestureRecognizer(recog2)
        marge3.addGestureRecognizer(recog3)
        marge4.addGestureRecognizer(recog4)
        marge5.addGestureRecognizer(recog5)
        marge6.addGestureRecognizer(recog6)
        marge7.addGestureRecognizer(recog7)
        marge8.addGestureRecognizer(recog8)
        marge9.addGestureRecognizer(recog9)
        
        margeArray = [marge1 , marge2 , marge3 , marge4 , marge5 , marge6 , marge7, marge8 , marge9]
        
        
        
        
        counter = 10
        TimerLabel.text = "\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideMarge), userInfo: nil, repeats: true)
        
        
        hideMarge()
        
    }
    
    @objc func hideMarge(){
        for marge in margeArray {
            marge.isHidden = true
        }
       
       let random =  Int(arc4random_uniform(UInt32(margeArray.count - 1)))
        margeArray[random].isHidden = false
    }
    
    
    @objc func increaseScore(){
        score += 1
        ScoreLabel.text = "Score : \(score)"
    }

    @objc func countDown(){
        counter = counter - 1
        TimerLabel.text = "\(counter)"
        
        if counter == 0 {
            timer.invalidate()
            timer2.invalidate()
            for marge in margeArray {
                marge.isHidden = true
            }
            
            if self.score > self.highScore {
                self.highScore = self.score
                HighScoreLabel.text = "High Score \(highScore)"
                UserDefaults.standard.set(self.highScore, forKey: "highscore")
                
                
            }
            
            let alert = UIAlertController(title: "Time is over", message: "Vaxt bitti", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel)
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) {
                UIAlertAction in
                self.score = 0
                self.ScoreLabel.text = "Score : \(self.score) "
                self.counter = 10
                self.TimerLabel.text = String(self.counter)
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
                self.timer2 = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(self.hideMarge), userInfo: nil, repeats: true)
                
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true)
        }
        
    }
    
}

