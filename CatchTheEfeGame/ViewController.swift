//
//  ViewController.swift
//  CatchTheEfeGame
//
//  Created by Efe Karadağ on 09/12/2022.
//

import UIKit

class ViewController: UIViewController {
//    variables
    var score = 0
    var timer = Timer()
    var counter = 0
    
    
//    wiews
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var cent1: UIImageView!
    @IBOutlet weak var cent2: UIImageView!
    @IBOutlet weak var cent3: UIImageView!
    @IBOutlet weak var cent4: UIImageView!
    @IBOutlet weak var cent5: UIImageView!
    @IBOutlet weak var cent6:UIImageView!
    @IBOutlet weak var cent7:UIImageView!
    @IBOutlet weak var cent8:UIImageView!
    @IBOutlet weak var cent9:UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "score: \(score)"
        
        cent1.isUserInteractionEnabled = true
        cent2.isUserInteractionEnabled = true
        cent3.isUserInteractionEnabled = true
        cent4.isUserInteractionEnabled = true
        cent5.isUserInteractionEnabled = true
        cent6.isUserInteractionEnabled = true
        cent7.isUserInteractionEnabled = true
        cent8.isUserInteractionEnabled = true
        cent9.isUserInteractionEnabled = true
        
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
       
        cent1.addGestureRecognizer(recognizer1)
        cent2.addGestureRecognizer(recognizer2)
        cent3.addGestureRecognizer(recognizer3)
        cent4.addGestureRecognizer(recognizer4)
        cent5.addGestureRecognizer(recognizer5)
        cent6.addGestureRecognizer(recognizer6)
        cent7.addGestureRecognizer(recognizer7)
        cent8.addGestureRecognizer(recognizer8)
        cent9.addGestureRecognizer(recognizer9)
        
        counter = 10
        timeLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        
        
        
        
        
        
        
    }
    
    @objc func increaseScore() {
        score += 1
        scoreLabel.text = "score: \(score)"
        
    }
    
    @objc func countDown() {
        counter -= 1
        timeLabel.text = String(counter)
        
        if counter == 0 {
            timer.invalidate()
            
            
//            alertt
            let alert = UIAlertController(title: "Timr Is Up", message: "Do You Want To Play Again?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            
            let replayButton = UIAlertAction(title: "REPLAY", style: UIAlertAction.Style.default) {
                (UIAlertAction) in
            }
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true)
        }
    }
}

