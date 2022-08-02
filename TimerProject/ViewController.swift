//
//  ViewController.swift
//  TimerProject
//
//  Created by Felipe Augusto Correia on 02/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunction() {
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Timer is over."
        }
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        print("Button clicked.")
    }
    
}

