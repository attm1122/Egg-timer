//
//  ViewController.swift
//  EggTimer
//
//  Created by Aubrey Mazinyi on 12/2/18.
//  Copyright © 2018 AubijuanApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer!
    var time = 210
    var reset = 210
    
    @objc func decreaseTimer (){
        if time > 0 {
            time -= 1
            timerLabel.text = String (time)
        }else {
            timer.invalidate()
        }
    }
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func minusTen(_ sender: Any) {
        if time > 10 {
            time -= 10
            timerLabel.text = String(time)
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        if time < 210 {
            timerLabel.text = String(reset)
            timer.invalidate()
        }
    }
    
    @IBAction func plusTen(_ sender: Any) {
        if time >= 0 {
            time += 10
            timerLabel.text = String(time)
        }
    }
    
    @IBAction func playTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pauseTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

